# Rocket Welder SDK vcpkg Registry

Custom vcpkg registry for Rocket Welder SDK - C++ client library for RocketWelder video streaming services.

## Usage

Add to your `vcpkg-configuration.json`:

```json
{
  "registries": [
    {
      "kind": "git",
      "repository": "https://github.com/modelingevolution/rocket-welder-sdk-vcpkg-registry",
      "baseline": "<commit-sha>",
      "packages": ["rocket-welder-sdk"]
    }
  ]
}
```

Then install:
```bash
vcpkg install rocket-welder-sdk
```
