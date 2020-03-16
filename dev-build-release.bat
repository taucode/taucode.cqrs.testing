dotnet restore

dotnet build --configuration Debug
dotnet build --configuration Release

dotnet test -c Debug .\tests\TauCode.Cqrs.Testing.Tests\TauCode.Cqrs.Testing.Tests.csproj
dotnet test -c Release .\tests\TauCode.Cqrs.Testing.Tests\TauCode.Cqrs.Testing.Tests.csproj

nuget pack nuget\TauCode.Cqrs.Testing.nuspec
