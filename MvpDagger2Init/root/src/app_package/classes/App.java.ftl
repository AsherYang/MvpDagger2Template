package ${packageName}.app;

import android.app.Application;
import android.content.Context;
import android.support.annotation.NonNull;


public final class ${appClass} extends Application
{
    private AppComponent mAppComponent;

    @Override
    public void onCreate() {
        super.onCreate();
        setupGraph();
    }

    private void setupGraph() {
        mAppComponent = DaggerAppComponent.builder()
                .appModule(new AppModule(this))
                .build();
        mAppComponent.inject(this);
    }

    @NonNull
    public AppComponent getAppComponent() {
        return mAppComponent;
    }

    public static ${appClass} get(Context context) {
	return (${appClass}) context.getApplicationContext();
    }
}