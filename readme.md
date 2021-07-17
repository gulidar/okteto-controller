# TODO


* Не модифицировать PATH без необходимости
* Научиться доставать свежий Helm (в их скрипте есть строчка с регулярками)


* ~~Добавить Helm CLI~~
* ~~Проверка доступности команд перед скачиванием~~
* ~~Корректное определение последней версии Okteto~~

# Note on repl migration
Don't forget about secrets!
* OKTETO_CUBECONFIG

And about environment variables.
* OKTETO_CONTROLLER_WORKDIR
    * .replit
        * `run` section
        * `onBoot` section
