# Sorular

## 1.soru

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## 2.soru

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## 3.soru

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory.

## 4.soru

```
let parent = {
    func2: function () {
        return new Promise(function (resolve, reject) {
            return resolve(1);
        });
    },
    func1: function () {
        return new Promise((resolve, reject) => {
            this.func2().then((count) => {
                console.log(count + 1);
            });
        });
    }
}
parent.func1();

```
