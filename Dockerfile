FROM microsoft/aspnetcore-build:2.0

# Required inside Docker, otherwise file-change events may not trigger
ENV DOTNET_USE_POLLING_FILE_WATCHER 1

# Set a working dir at least 2 deep. The output and intermediate output folders will be /code/obj and /code/bin
WORKDIR /code/app

# By copying these into the image when building it, we don't have to re-run restore everytime we launch a new container
COPY src/*.csproj .
COPY src/NuGet.config .
COPY src/Directory.Build.props .
RUN dotnet restore

COPY src .

# This will build and launch the server in a loop, restarting whenever a *.cs file changes
ENTRYPOINT dotnet watch run --no-restore