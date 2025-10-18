# Contributing to LLM Memory Estimator

Thank you for your interest in contributing to the LLM Memory Estimator! This document provides guidelines and instructions for contributing.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
- [Development Setup](#development-setup)
- [Making Changes](#making-changes)
- [Testing](#testing)
- [Submitting Changes](#submitting-changes)
- [Areas for Contribution](#areas-for-contribution)

## Code of Conduct

This project adheres to the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/). By participating, you are expected to uphold this code.

## Getting Started

1. **Fork the repository** on GitHub
2. **Clone your fork** locally:
   ```bash
   git clone https://github.com/YOUR-USERNAME/llm-memory-estimator.git
   cd llm-memory-estimator
   ```

3. **Add the original repository** as upstream:
   ```bash
   git remote add upstream https://github.com/david-xinyuwei/llm-memory-estimator.git
   ```

## Development Setup

### Prerequisites

- Python 3.8 or higher
- Git
- Virtual environment tool (venv, conda, etc.)

### Setup Steps

```bash
# Create virtual environment
python -m venv venv

# Activate virtual environment
# On Windows:
venv\Scripts\activate
# On Linux/Mac:
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Install development dependencies (if any)
pip install pytest black flake8
```

### Running Locally

```bash
# Test CLI interface
python src/cli_estimator.py

# Test web interface
streamlit run src/web_estimator.py

# Test Jupyter notebook
jupyter notebook notebooks/memory_estimation.ipynb
```

## Making Changes

### Branch Naming

Create a descriptive branch name:
- Feature: `feature/add-moe-support`
- Bug fix: `fix/calculation-error`
- Documentation: `docs/update-readme`

```bash
git checkout -b feature/your-feature-name
```

### Code Style

- Follow [PEP 8](https://www.python.org/dev/peps/pep-0008/) style guide
- Use meaningful variable names
- Add comments for complex logic
- Keep functions focused and small

### Commit Messages

Use clear and descriptive commit messages:

```
feat: Add support for Mixture of Experts models

- Implement MoE memory calculation
- Add tests for MoE scenarios
- Update documentation

Fixes #123
```

**Commit types:**
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `test`: Adding or updating tests
- `refactor`: Code refactoring
- `style`: Code style changes (formatting)
- `chore`: Maintenance tasks

## Testing

### Running Tests

```bash
# Run all tests
python -m pytest tests/

# Run specific test file
python -m pytest tests/test_estimator.py

# Run with coverage
python -m pytest --cov=src tests/
```

### Writing Tests

- Add tests for new features
- Ensure existing tests pass
- Aim for high code coverage

Example test:
```python
def test_memory_calculation():
    """Test basic memory calculation"""
    result = estimate_memory(
        num_params=70e9,
        precision="fp16",
        batch_size=1,
        seq_length=2048
    )
    assert result > 0
    assert result < 200  # GB
```

## Submitting Changes

### Pull Request Process

1. **Update your fork**:
   ```bash
   git fetch upstream
   git rebase upstream/master
   ```

2. **Push your changes**:
   ```bash
   git push origin feature/your-feature-name
   ```

3. **Create Pull Request**:
   - Go to GitHub and create a new Pull Request
   - Fill in the PR template
   - Link related issues

4. **PR Review**:
   - Address review comments
   - Keep PR focused on one feature/fix
   - Ensure CI/CD checks pass

### Pull Request Template

```markdown
## Description
Brief description of changes

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] Documentation update
- [ ] Performance improvement

## Testing
Describe testing performed

## Checklist
- [ ] Code follows style guidelines
- [ ] Tests added/updated
- [ ] Documentation updated
- [ ] All tests passing
```

## Areas for Contribution

### High Priority

- **Model Support**: Add support for new model architectures (MoE, Sparse Transformers)
- **Optimization Techniques**: Implement new memory optimization strategies
- **Testing**: Increase test coverage
- **Documentation**: Improve examples and tutorials

### Medium Priority

- **UI/UX**: Enhance Streamlit interface
- **Performance**: Optimize calculation speed
- **Features**: Add export functionality (PDF, CSV)
- **Internationalization**: Add language support

### Low Priority

- **Code Quality**: Refactoring and cleanup
- **CI/CD**: Improve build and deployment pipelines
- **Examples**: Add more usage examples

## Development Guidelines

### Adding a New Feature

1. **Design**: Discuss design in GitHub Issues
2. **Implement**: Write clean, tested code
3. **Document**: Update README and docstrings
4. **Test**: Add comprehensive tests
5. **Submit**: Create pull request

### Fixing a Bug

1. **Reproduce**: Confirm the bug exists
2. **Fix**: Write minimal fix
3. **Test**: Add regression test
4. **Document**: Update CHANGELOG
5. **Submit**: Create pull request

### Updating Documentation

1. **Identify**: Find outdated/missing docs
2. **Update**: Make clear, concise changes
3. **Review**: Check for typos and clarity
4. **Submit**: Create pull request

## Community

- **Questions**: Open a [GitHub Discussion](https://github.com/david-xinyuwei/llm-memory-estimator/discussions)
- **Bugs**: Report via [GitHub Issues](https://github.com/david-xinyuwei/llm-memory-estimator/issues)
- **Features**: Request via [GitHub Issues](https://github.com/david-xinyuwei/llm-memory-estimator/issues)

## Recognition

Contributors will be recognized in:
- README.md Contributors section
- Release notes
- Project documentation

Thank you for contributing! 🎉
