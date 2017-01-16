const gulp = require("gulp");
const bs = require("browser-sync");
const del = require("del");
const $ = require("gulp-load-plugins")();
const input = {
    styles: "./sass/**/*.scss",
    assets: "./assets/**/*"
};
const output = "./dist";

const errorHandler = (title) => {
    return $.plumber({
        errorHandler: $.notify.onError((err) => {
            return {
                title: `${title} (${err.plugin})`,
                message: err.message
            };
        })
    });
};

gulp.task("styles", () => {
    return gulp.src(input.styles)
        .pipe($.sourcemaps.init())
        .pipe($.sass())
        .pipe($.sourcemaps.write())
        .pipe($.concat("styles.css"))
        .pipe(gulp.dest(output))
        .pipe(bs.stream());
});

gulp.task("clean", () => {
    return del(output);
});

gulp.task("assets", () => {
    return gulp.src(input.assets)
        .pipe(gulp.dest(output));
});

gulp.task("lint", () => {
    return gulp.src(input.styles)
        .pipe(errorHandler("Linter"))
        .pipe($.stylelint({
            reporters: [
                { formatter: "string", console: true }
            ]
        }));
});

gulp.task("server", () => {
    bs.init({
        server: output,
        open: false,
        browser: "browser",
        reloadOnRestart: true,
        notify: false
    });
});

gulp.task("watch", () => {
    gulp.watch(input.assets, gulp.series("assets"));
    gulp.watch(input.styles, gulp.series("lint", "styles"));
});

gulp.task("build", gulp.series("clean", gulp.parallel("styles", "assets")));
gulp.task("default", gulp.series("build", gulp.parallel("watch", "server")));
