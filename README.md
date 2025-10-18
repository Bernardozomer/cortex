# CoRTeX

Container Runtime for TeX

CoRTeX provides a lightweight, reproducible and easy-to-setup container runtime for compiling TeX documents.

Key features:

- Reproducible builds: fixed TeX distributions and package sets for deterministic outputs.
- Isolated execution: sandboxed compile environment to avoid host pollution and dependency conflicts.
- CI/CD friendly: easy integration with GitHub Actions, GitLab CI, and other runners.
- Portable runtime: Docker setup with minimal host requirements.

Depends solely on Docker.

## Usage

```bash
./build.sh  # Build once
./run.sh <path to .tex file>  # Output will be stored in ./out/
./purge_output.sh  # If you'd like to remove everything in ./out/
```