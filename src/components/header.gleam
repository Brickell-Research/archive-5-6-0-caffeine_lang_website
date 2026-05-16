import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html

pub fn view() -> Element(Nil) {
  html.header([attribute.class("site-header")], [
    html.nav([attribute.class("nav")], [
      html.a(
        [
          attribute.href("https://caffeine-lang.run/"),
          attribute.class("logo"),
        ],
        [
          html.img([
            attribute.src("/images/temp_caffeine_icon.png"),
            attribute.alt("Caffeine"),
            attribute.class("logo-img"),
          ]),
          html.text("Caffeine"),
        ],
      ),
      html.ul([attribute.class("nav-links")], [
        html.li([], [
          html.a([attribute.href("https://caffeine-lang.run/")], [
            html.text("Home"),
          ]),
        ]),
        html.li([], [
          html.a([attribute.href("/tour")], [html.text("Tour")]),
        ]),
        html.li([], [
          html.a([attribute.href("https://caffeine-lang.run/tools")], [
            html.text("Tools"),
          ]),
        ]),
        html.li([], [
          html.a([attribute.href("https://caffeine-lang.run/blog")], [
            html.text("Blog"),
          ]),
        ]),
      ]),
    ]),
  ])
}
