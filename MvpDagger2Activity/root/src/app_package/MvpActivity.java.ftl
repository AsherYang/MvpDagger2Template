package ${packageName}.module.${underscoreToCamelCase(classToResource(activityClass))};

import android.os.Bundle;

public class ${activityClass} extends BaseActivity implements ${viewClass} {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
<#if generateLayout>
        setContentView(R.layout.${layoutName});
</#if>
    }

    @Override
    protected void setupComponent(AppComponent appComponent) {
	// TODO inject dagger component
    }
}
