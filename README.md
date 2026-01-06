<div align="center">

# rosswilliams.id.au

[![Hugo](https://img.shields.io/badge/Built%20with-Hugo-blue.svg?style=for-the-badge&logo=hugo)](https://gohugo.io/) [![Netlify Status](https://img.shields.io/netlify/f720d8ab-4413-4ef2-8f34-1339d5f8f044?style=for-the-badge&logo=netlify)](https://app.netlify.com/projects/rosswilliams-id-au/deploys) [![Renovate Bot](https://img.shields.io/badge/renovate-enabled-brightgreen?style=for-the-badge&logo=renovate&logoColor=fff)](https://github.com/renovatebot/renovate)

Source files for my personal landing page.

</div>

## Requirements

This project uses [mise](https://mise.jdx.dev/) for tool and task management. You will need to have mise installed to ensure the correct Hugo version and to use the provided tasks.

Install mise (if not already):

```sh
brew install mise
```

or

```sh
curl https://mise.run | bash
```

Then install the required tools:

```sh
mise install
```

This will install the correct version of Hugo (hugo-extended 0.145.0).

## Usage

Common development tasks are defined in `mise.toml` and can be run with:

```sh
mise run <task>
# or
mise <task>
```

Available tasks:

- `serve` — Serve the Hugo site locally with drafts included
- `build` — Build the Hugo site for production
- `clean` — Remove the generated `public` directory

For example, to serve the site locally:

```sh
mise serve
```

## Netlify Configuration

The `netlify.toml` file configures how Netlify builds and deploys the site. It specifies the build command, publish directory, and environment variables (such as the Hugo version). It also sets HTTP headers for security and performance, including a strict Content Security Policy and other best-practice headers.

## License

Code is licensed under the [MIT License](https://opensource.org/licenses/MIT).

Content is licensed under a [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/).

## Author Information

Created and curated from 2021 onwards by [Ross Williams](http://rosswilliams.id.au/).
