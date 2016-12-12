package ${packageName}.module.${moduleFileName};

import android.os.Bundle;

public class ${activityClass} extends BaseActivity implements ${viewClass} {

	@Inject
	${presenterClass} mPresenter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
<#if generateLayout>
        setContentView(R.layout.${layoutName});
</#if>
    }

    @Override
    protected void setupComponent(AppComponent appComponent) {
		Dagger${componentClass}.builder()
                .appComponent(appComponent)
                .${moduleClass?uncap_first}(new ${moduleClass}(this))
                .build()
                .inject(this);
    }
}
