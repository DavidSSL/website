param(
    [switch] $buildOnly
)

# Install nuget packages
pushd src/Website
npm install
popd

if (!$buildOnly) {
    # Install local dotnet-serve
    dotnet tool install dotnet-serve --tool-path .tools
}
