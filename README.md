Blog
===

Uses [hugo](https://gohugo.io/) static site generator to generate a blog.

Use `Makefile` targets for local hosting and deploying in prod.

These targets create and manage a clone of the gh pages repo locally in a gitignored `public/` directory. Because submodules are annoying.

- `make`: build the site into `public/`.
- `make dev`: run a local server on `:1313`.
- `make deploy`: build, commit, and push the site to production.

Some useful commands
---

* Generating a new post: `hugo new posts/name-of-post.md`
* Starting a dev server with drafts: `hugo server -D`
