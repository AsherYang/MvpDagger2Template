package ${packageName}.module.${underscoreToCamelCase(classToResource(activityClass))};


public class ${presenterClass}Impl implements ${presenterClass} {

    private ${viewClass} mView;

    public ${presenterClass}Impl(${viewClass} view) {
        this.mView = view;
    }

}
