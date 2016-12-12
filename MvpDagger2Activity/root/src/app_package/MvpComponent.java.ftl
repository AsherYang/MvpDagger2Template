package ${packageName}.module.${underscoreToCamelCase(classToResource(activityClass))};

import com.xtc.mvpdaggerretrofit.ActivityScope;
import com.xtc.mvpdaggerretrofit.AppComponent;

import dagger.Component;


@ActivityScope
@Component(dependencies = AppComponent.class, modules = ${moduleClass}.class)
public interface ${componentClass} {
    void inject(${activityClass} activity);
    ${presenterClass} getPresenter();
}
