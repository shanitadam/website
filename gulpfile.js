
var gulp        = require('gulp'),
    useref      = require('gulp-useref'),
    gutil       = require('gulp-util'),
    sass        = require('gulp-sass'),
    csso        = require('gulp-csso'),
    uglify      = require('gulp-uglify'),
    concat      = require('gulp-concat'),
    livereload  = require('gulp-livereload'), // Livereload plugin needed: https://chrome.google.com/webstore/detail/livereload/jnihajbhpnppcggbcgedagnkighmdlei
    tinylr      = require('tiny-lr'),
    express     = require('express'),
    deploy      = require('gulp-gh-pages'),
    app         = express(),
    marked      = require('marked'), // For :markdown filter in jade
    path        = require('path'),
    swig        = require('gulp-swig'),
    ext_replace = require('gulp-ext-replace'),
    server      = tinylr(),
    $ = require('gulp-load-plugins')(),
    cssnano = require('cssnano'),
    imagemin = require('gulp-imagemin'),
    del = require('del'),
    runSequence = require('run-sequence')
    ;



// --- Basic Tasks ---

gulp.task('clean:dist', function() {
  return del.sync('dist');
})

gulp.task('clean:build', function() {
  return del.sync('build');
})

// ---- dev tasks ---- 

gulp.task('imgs', function(){
  return gulp.src('src/img/**/*.+(png|jpg|gif|svg)')
  .pipe(imagemin())
  .pipe(gulp.dest('./build/img'))
})

gulp.task('scss', function() {
  return gulp.src('src/scss/*.scss')
    .pipe( 
      sass( { 
        includePaths: ['src/scss'],
        errLogToConsole: true
      } ) )
    .pipe( csso() )
    .pipe( gulp.dest('./build/css/') )
    .pipe( livereload( server ));
});

gulp.task('js', function() {
  return gulp.src('src/js/*.js')
    .pipe( gulp.dest('./build/js/'))
    .pipe( livereload( server ));
});

gulp.task('templates', function() {
  return gulp.src('src/templates/*.swig')
    .pipe(swig({
      load_json: true,
      defaults: { 
        cache: false,
        locals: {
          site_name: "My Blog"
        } 
      }
    }))
    .pipe(ext_replace('.html'))
    .pipe(gulp.dest('./build/'))
    .pipe( livereload( server ));
});

gulp.task('express', function() {
  app.use(express.static(path.resolve('./build')));
  app.listen(8000,'0.0.0.0');
  gutil.log('Listening on port: 8000');
});

gulp.task('watch', function () {
  server.listen(35729, function (err) {
    if (err) {
      return console.log(err);
    }
    gulp.watch('src/scss/**/*.scss',['scss']);
    gulp.watch('src/js/**/*.js',['js']);
    gulp.watch('src/templates/**/*.swig',['templates']);
    
  });
});

// ---- build taks -----

gulp.task('dist-imgs', function(){
  return gulp.src('build/img/**/*.+(png|jpg|gif|svg)')
  .pipe(gulp.dest('./dist/img'))
})

gulp.task('useref', function(){

  var assets = $.useref.assets({
    searchPath: 'build'
  });

  return gulp.src('build/**/*.html')
    .pipe(assets)
    .pipe($.uniqueFiles())
    .pipe(
      $.if('*.css', 
        $.postcss([
            cssnano()
          ]
        )
      )
    )
    .pipe(
      $.if(
        '*.js', $.uglify()
      )
    )
    .pipe($.rev())
    .pipe(assets.restore())
    .pipe($.useref())
    .pipe($.revReplace({
      //prefix: 'https://cdn-site.__PROJECT_DOMAIN__/'
    }))
    .pipe(gulp.dest('dist'));
});

gulp.task('github', function () {
  return gulp.src("./dist/**/*")
    .pipe(deploy())
});

/* main tasks */

gulp.task('default', function (callback) {
  runSequence(['imgs','js','scss','templates','express','watch'],
    callback
  )
})

gulp.task('build', function (callback) {
  runSequence(
    'clean:dist',
    ['imgs','js','scss','templates'],
    'dist-imgs',
    'useref',
    callback
  )

  gulp.src('CNAME')
    .pipe( gulp.dest('./dist/'));
 
})

gulp.task('clean', function (callback) {
  runSequence(
    ['clean:build','clean:dist'],
    callback
  )
})

gulp.task('deploy', function (callback) {
  runSequence(
    'build',
    ['github'],
    callback
  )
})
