<!-- === WATCHER HEADER START === -->
<!-- File: journaltrove-ios/README.md -->
<!-- Managed by file watcher -->
<!-- === WATCHER HEADER END === -->
# 🍏 journaltrove App iOS Client

This repository contains the iOS Swift client implementation for the journaltrove App ecosystem. It provides a native iOS interface for creating, managing, and synchronizing journaltrove lists.

## 📚 Overview

The iOS client is part of the larger journaltrove App ecosystem that enables secure, decentralized journaltrove list management. Key features include:

- Local journaltrove list creation and management
- Secure storage using Swift's Keychain capabilities
- Synchronization with IPFS for cross-device access
- Cryptographic identity management for secure operations

## 🧩 Current Implementation

The iOS client currently implements:

- ✅ Core module with basic service definitions
- ✅ Echo Service that satisfies initial requirements (System.1.1.iOS.1)
- ✅ Unit tests mapped to requirements
- ✅ CI integration with the system repository
- 🚧 UI implementation (planned)
- 🚧 Full IPFS integration (planned)

## 🔧 Technology Stack

- **Language**: Swift 5.5+
- **Minimum iOS Version**: iOS 15
- **Package Management**: Swift Package Manager
- **Testing Framework**: XCTest
- **CI Pipeline**: GitHub Actions

## 🚀 Getting Started

### Prerequisites

- Xcode 13.0 or higher
- iOS 15 SDK
- Swift 5.5+
- Git

### Development Setup

1. Clone this repository:
```bash
git clone https://github.com/journalbrand/journaltrove-ios.git
```

2. Open the package in Xcode:
```bash
open journaltrove-ios/Package.swift
```

3. Build the package:
```bash
cd journaltrove-ios
swift build
```

4. Run tests:
```bash
swift test
```

### Project Structure

```
journaltrove-ios/
├── Package.swift           # Swift Package Manager configuration
├── Sources/                # Source code
│   └── Core/               # Core functionality
│       └── EchoService.swift # Initial service implementation
├── Tests/                  # Test suites
│   ├── CoreTests/          # Core module tests
│   │   └── EchoServiceTests.swift # Tests for EchoService
│   └── test-mappings.jsonld # Mapping of tests to requirements
└── requirements/           # Component requirements
    └── requirements.jsonld # iOS-specific requirements
```

## 📋 Requirements

The iOS client implements specific requirements defined in the JSON-LD format:

- Requirements are stored in `requirements/requirements.jsonld`
- Tests are mapped to requirements in `Tests/test-mappings.jsonld`
- Every implementation must satisfy specific requirements

### Key Requirements

- **System.1.1.iOS.1**: Input handling capability (implemented in EchoService)
- **System.1.1.iOS.1.1**: journaltrove List Management (planned)
- **System.1.1.iOS.1.2**: journaltrove Item Management (planned)
- **System.1.1.iOS.1.3**: iOS Local Storage (planned)
- **System.2.1.iOS.1.1**: iOS IPFS Backup (planned)
- **System.3.1.iOS.1**: iOS Cryptographic Identity (planned)

## 🧪 Testing

All code must be thoroughly tested and mapped to requirements:

1. Each test should verify a specific requirement
2. Test mapping should be defined in `Tests/test-mappings.jsonld`
3. Run tests before submitting changes:
```bash
swift test
```

## 🔄 CI/CD Integration

This repository integrates with the journaltrove App CI/CD pipeline:

- **CI Workflow**: `.github/workflows/ci.yml`
- **Artifacts**: Test results in JSON-LD format
- **Integration**: Test results are sent to the system repository for compliance checks

## 🔗 Related Repositories

The iOS client is part of a multi-repository ecosystem:

- [journaltrove-system](https://github.com/journalbrand/journaltrove-system) - System-level coordination, requirements and CI/CD orchestration
- [journaltrove-android](https://github.com/journalbrand/journaltrove-android) - Android client
- [journaltrove-ipfs](https://github.com/journalbrand/journaltrove-ipfs) - IPFS node implementation

## 📝 Contributing

To contribute to the iOS client:

1. Fork the repository
2. Create a feature branch
3. Implement your changes following Swift best practices
4. Add tests that map to requirements
5. Ensure the CI workflow passes
6. Submit a pull request

## 📜 License

This project is licensed under the MIT License - see the LICENSE file for details. 
