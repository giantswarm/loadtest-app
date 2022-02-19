# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Fixed

- Added required field `pathType` in Ingress resource.

## [0.4.0] - 2022-02-19

### Changed

- Use `networking.k8s.io/v1` instead of `networking.k8s.io/v1beta1` Ingress API.
- Add `ingress.ingressClassName` field to values.

## [0.3.0] - 2020-10-08

### Changed

- Use `networking.k8s.io/v1beta1` instead of `extensions/v1beta1` Ingress API.

## [0.2.0] - 2020-08-11

### Changed

- Use cluster based domain in Ingress default hostname.

## [0.1.3] - 2020-07-14

### Changed

- Run as non-root, numeric (`1000`) user to help verify user is non-root.
- Added GitHub workflows, app flavor.
- Add changelog.

## [0.1.2] - 2020-05-20

### Changed

- Add node affinity option - off by default.

## [0.1.1] - 2020-04-07

### Changed

- Use Always image pull policy due to latest tag (#12)

## [0.1.0] - 2020-04-06

- Push loadtest app to default app catalog (#11).

### Changed

## [0.0.1] - 2019-01-25

### Changed

- Initial release.

[Unreleased]: https://github.com/giantswarm/loadtest-app/compare/v0.4.0...HEAD
[0.4.0]: https://github.com/giantswarm/loadtest-app/compare/v0.3.0...v0.4.0
[0.3.0]: https://github.com/giantswarm/loadtest-app/compare/v0.2.0...v0.3.0
[0.2.0]: https://github.com/giantswarm/loadtest-app/compare/v0.1.3...v0.2.0
[0.1.3]: https://github.com/giantswarm/loadtest-app/compare/v0.1.2...v0.1.3
[0.1.2]: https://github.com/giantswarm/loadtest-app/compare/v0.1.1...v0.1.2
[0.1.1]: https://github.com/giantswarm/loadtest-app/compare/v0.1.0...v0.1.1
[0.1.0]: https://github.com/giantswarm/loadtest-app/compare/v0.0.1...v0.1.0
[0.0.1]: https://github.com/giantswarm/loadtest-app/releases/tag/v0.0.1
