function markExternalLinks(root) {
  const scope = root || document;
  const links = scope.querySelectorAll("a[href]");

  links.forEach((link) => {
    const href = link.getAttribute("href");

    if (!href || href.startsWith("#") || href.startsWith("mailto:") || href.startsWith("tel:") || href.startsWith("javascript:")) {
      return;
    }

    let url;
    try {
      url = new URL(href, window.location.href);
    } catch (_error) {
      return;
    }

    if (url.origin === window.location.origin) {
      return;
    }

    link.setAttribute("target", "_blank");

    const rel = new Set((link.getAttribute("rel") || "").split(/\s+/).filter(Boolean));
    rel.add("noopener");
    rel.add("noreferrer");
    rel.add("external");
    link.setAttribute("rel", Array.from(rel).join(" "));
  });
}

if (typeof document$ !== "undefined") {
  document$.subscribe(markExternalLinks);
} else {
  document.addEventListener("DOMContentLoaded", () => markExternalLinks(document));
}
