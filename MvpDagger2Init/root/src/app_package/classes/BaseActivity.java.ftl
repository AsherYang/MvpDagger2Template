package ${packageName}.module.common;

import android.app.Activity;
import android.os.Bundle;

public abstract class BaseActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
	setupComponent((AppComponent) ${appClass}.get(this).getAppComponent());
    }

    protected abstract void setupComponent(AppComponent appComponent);
}
