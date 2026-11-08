# Resume / CV Website

This project is an HTML- and Markdown-based CV or resume page template that can be viewed in a browser and printed to PDF. The main CV content is stored in `template.md` and rendered as HTML using the `marked.js` library.

## Features

- Clean, professional CV layout
- CV content written in Markdown for easy editing
- Browser button to download or print to PDF
- A small notification for first-time visitors
- Deployable to GitHub Pages using the included workflow

## Project Structure

```text
resume/
├── index.html          # Main CV page
├── style.css           # CV page styles
├── template.md         # CV content in Markdown format
├── README.md           # Project documentation
├── .github/
│   └── workflows/
│       └── deploy.yml  # GitHub Pages deployment workflow
└── .gitignore          # (if included in your repository)
```

## Running the Project

1. Clone or download this repository.
2. On Windows, run `start-local.bat` from the project folder.
3. Once the server is running, open `http://localhost:8000` in your browser.
4. Press `Ctrl+C` in the server window to stop it.

On other operating systems, run `python -m http.server 8000` from the project folder, then open `http://localhost:8000`. A local server is required so the browser can load `template.md` using `fetch()`.

## Editing the CV

Edit the contents of `template.md` with your personal information.

Example:

```md
# Your Full Name

Software Engineer | Jakarta, Indonesia | email@domain.com | linkedin.com/in/username

## Summary

IT professional with 3+ years of experience in web development.
```

Then reload `http://localhost:8000` to see the changes.

## Changing the Page Title

In `index.html`, you can change the following section to match your CV title:

```html
<title>ATS Resume - Your Name</title>
```

## Customizing the Styling

The `style.css` file contains all visual style settings, including:

- colors
- font sizes
- layout
- spacing
- heading and list styles

Adjust these to suit your preferences.

## Deploying to GitHub Pages

The deployment workflow is available at:

- `.github/workflows/deploy.yml`

To use it:

1. Push the project to a GitHub repository.
2. Open `Settings` > `Pages`.
3. Make sure the deployment source is set to `GitHub Actions`.
4. GitHub will automatically deploy the project using the `deploy.yml` workflow.

## Notes

This project is suitable as a:

- personal curriculum vitae
- single-page online portfolio
- easily customizable resume template

## License

This project is intended for personal use and can be modified to suit your needs.
