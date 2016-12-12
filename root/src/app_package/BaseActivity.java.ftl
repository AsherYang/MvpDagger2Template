package ${packageName};

import ${superClassFqcn};
import android.os.Bundle;

public class ${baseActivityClass} extends ${superClass} {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
		
    }

    protected abstract void setupComponent(AppComponent appComponent);
}
