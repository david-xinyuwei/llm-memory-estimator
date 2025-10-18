# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Golden Path compliance with azd template
- Live demo link in README
- GitHub Actions workflow for Azure deployment
- CONTRIBUTING.md with development guidelines
- CHANGELOG.md for tracking changes

### Changed
- Updated README with enhanced documentation
- Improved screenshot section
- Added features highlight section

## [0.1.0] - 2025-10-18

### Added
- Initial release of LLM Memory Estimator
- CLI interface for memory estimation
- Streamlit web interface
- Jupyter notebook for educational purposes
- Azure deployment with `azd` support
- Support for major LLM families (Llama, Mistral, Qwen)
- FlashAttention and GQA optimization analysis
- Hugging Face model integration
- CPU-only PyTorch deployment option
- Comprehensive README documentation
- Setup scripts for Windows and Linux
- Bicep infrastructure templates
- Application Insights monitoring

### Features
- Accurate memory calculation for inference
- Multiple precision support (FP32, FP16, INT8, INT4)
- Batch size and sequence length customization
- KV Cache memory estimation
- Activation memory calculation
- Real-time parameter updates
- Automatic model configuration detection
- Cost estimation for Azure deployment

### Infrastructure
- Azure App Service deployment
- B2 SKU configuration for production
- Application Insights integration
- Log Analytics workspace
- One-click deployment with Azure Developer CLI
- Infrastructure as Code with Bicep

### Documentation
- Comprehensive README with examples
- Troubleshooting guide
- Architecture documentation
- Memory calculation formulas
- Azure deployment guide
- Local setup instructions

## [0.0.1] - 2025-10-01

### Added
- Initial project structure
- Basic memory calculation logic
- Simple CLI interface
- Requirements specification

---

## Release Notes

### Version 0.1.0 - Initial Public Release

This is the first public release of the LLM Memory Estimator. It provides:

**Core Functionality:**
- Memory estimation for transformer-based LLMs
- Support for multiple model architectures
- Optimization technique analysis
- Multiple interface options

**Deployment Options:**
- One-click Azure deployment with `azd up`
- Local deployment with setup scripts
- Docker support (planned)

**Known Limitations:**
- Training memory not supported
- Limited to standard transformer architectures
- Framework overhead not included in estimates

**Future Plans:**
- Support for Mixture of Experts (MoE) models
- Training memory estimation
- More optimization techniques
- Enhanced UI/UX
- API endpoint support

---

## How to Contribute

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on:
- Reporting bugs
- Suggesting enhancements
- Submitting pull requests
- Development setup

---

## Links

- [Live Demo](https://llm-mem-david123-dqaagwkki5pjm.azurewebsites.net/)
- [GitHub Repository](https://github.com/david-xinyuwei/llm-memory-estimator)
- [Issue Tracker](https://github.com/david-xinyuwei/llm-memory-estimator/issues)
- [Discussions](https://github.com/david-xinyuwei/llm-memory-estimator/discussions)
