# How its made

This site was the result of a small but focused project that spanned a couple of evenings. The main idea behind it was straightforward: develop a static site generator using only basic, built-in Unix utilities and markdown files.

The content files for the project are organized in a nested directory structure, with the top level representing the year and the next level down representing the month. Each month's directory contains all the posts for that particular month.

To create the index page, I devised a simple yet effective script. This script reads the content directory structure and automatically generates hyperlinks for each post.

In summary, this project embodies simplicity and efficiency, utilizing minimal tools to achieve its purpose.

Step 1: Find Markdown Files

    find content -iname '*.md' |

Step 2: Create Hyperlinks with `sed`

    sed -e 's/\(.*\)\.md/\<a href="\1.html">\1\<\/a\>/g' -e 's/content\/[0-9]\{4\}\/[0-9]\{2\}\///g' -e 's/\(.*\)\.md/\1/' > public/links.html

Step 3: Combine HTML Files

    cat partials/header.html partials/hero.html public/links.html partials/footer.html > public/index.html

Step 4: Cleanup

    rm public/links.html

In this project, I constructed the index page by combining generated hyperlinks markup with a generic header and footer. These partials proved to be invaluable, as I reused them while building the pages for each content file.

Subsequently, I tackled the task of converting the content files from Markdown to HTML format. To accomplish this, I designed a straightforward script that focused on achieving three primary goals:

- Conversion of Markdown files to HTML format.
- Creation of uniform HTML files complete with header and footer content.
- Streamlining the elimination of unnecessary files.

Now, let's delve into the script's concise steps:

Step 1: Convert Markdown to HTML

    find content -iname "*.md" -exec sh -c 'OUT=$(echo "{}" | sed "s/content\/[0-9]\{4\}\/[0-9]\{2\}\(.*\).md/public\1/"); markdown "{}" > "$OUT"' {} \;

Step 2: Build Consistent HTML Files

    find public -type f ! -name "*.*" -exec sh -c 'NAME=$(echo "{}" | sed "s/$/\.html/"); cat partials/header.html "{}" partials/footer.html > "$NAME"' \;

Step 3: Cleanup

    find public -type f ! -name "*.*" -exec sh -c 'rm "{}"' \;

By leveraging the power of `find`, `sed`, `cat`, and `rm` commands, our script offers an automated solution for generating organized HTML 
files from Markdown content. This project also serves as a reminder that we don't always need to reach for hefty frameworks for simple tasks.

Not hating on SSGs in general because I enjoy using Hugo for my other blog site but the truth is that I built this site in the same amount of
time that it would take someone to get up to speed on a SSG framework and read some of the docs. The difference is, this was much more fun.

Happy hacking!

