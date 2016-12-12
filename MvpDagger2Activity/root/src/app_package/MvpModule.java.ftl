package ${packageName}.module.${moduleFileName};

import dagger.Module;
import dagger.Provides;

@Module
public class ${moduleClass} {

    private ${viewClass} mView;

    public ${moduleClass}(${viewClass} view) {
        this.mView = view;
    }

    @Provides
    public ${viewClass} provideView(){
        return mView;
    }

    @Provides
    public ${presenterClass} providePresenter() {
        return new ${presenterClass}Impl(mView);
    }
}
