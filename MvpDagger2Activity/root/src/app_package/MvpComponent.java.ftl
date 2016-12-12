package ${packageName}.module.${moduleFileName};

import ${packageName}.app.ActivityScope;
import ${packageName}.app.AppComponent;
import dagger.Component;


@ActivityScope
@Component(dependencies = AppComponent.class, modules = ${moduleClass}.class)
public interface ${componentClass} {
    void inject(${activityClass} activity);
    ${presenterClass} getPresenter();
}
