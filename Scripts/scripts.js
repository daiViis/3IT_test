function highlighted_change(el) {
    if (el.classList.contains("not_active")) {
        el.classList.remove("not_active");
        el.classList.add("active");
    } else {
        el.classList.remove("active");
        el.classList.add("not_active");
    }
}