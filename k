from zipfile import ZipFile
import os

# Create folder and files
os.makedirs("kolade_portfolio", exist_ok=True)

with open("kolade_portfolio/index.html", "w") as f:
    f.write("""<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Kolade Kolawole - Web Developer</title>
  <link rel="stylesheet" href="styles.css" />
</head>
<body>
  <header>
    <h1>Kolade Kolawole</h1>
    <p>Web Developer specializing in website remodelling and modification</p>
  </header>

  <section id="about">
    <h2>About Me</h2>
    <p>I’m a passionate web developer focused on giving outdated or underperforming websites a fresh new look. I enjoy turning ideas into modern, responsive, and functional websites using HTML, CSS, and JavaScript.</p>
  </section>

  <section id="projects">
    <h2>Projects</h2>
    <p>Coming soon! Check back later to see some of my recent work.</p>
  </section>

  <section id="contact">
    <h2>Contact Me</h2>
    <p>Email: <a href="mailto:kkolade39@gmail.com">kkolade39@gmail.com</a></p>
  </section>

  <footer>
    <p>&copy; 2025 Kolade Kolawole</p>
  </footer>

  <script src="script.js"></script>
</body>
</html>""")

with open("kolade_portfolio/styles.css", "w") as f:
    f.write("""body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
  background: #f9f9f9;
  color: #333;
}

header {
  background: #007acc;
  color: white;
  padding: 2rem;
  text-align: center;
}

section {
  padding: 2rem;
  max-width: 800px;
  margin: auto;
}

h2 {
  border-bottom: 2px solid #007acc;
  padding-bottom: 0.5rem;
}

a {
  color: #007acc;
  text-decoration: none;
}

footer {
  text-align: center;
  padding: 1rem;
  background: #eee;
  margin-top: 2rem;
}""")

with open("kolade_portfolio/script.js", "w") as f:
    f.write("""// You can add interactivity here if needed
console.log("Welcome to Kolade's portfolio site!");
""")

# Create zip
with ZipFile("kolade_portfolio.zip", "w") as zipf:
    zipf.write("kolade_portfolio/index.html", arcname="index.html")
    zipf.write("kolade_portfolio/styles.css", arcname="styles.css")
    zipf.write("kolade_portfolio/script.js", arcname="script.js")
