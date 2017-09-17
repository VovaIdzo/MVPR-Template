package ${packageName};

import android.app.Activity;
import android.os.Bundle;
import android.content.Intent;

import ${rootPackageName}.R;
import ${rootPackageName}.core.android.App;
import ${rootPackageName}.core.mvp.MvpActivity;
import ${rootPackageName}.core.mvp.Presenter;
import ${rootPackageName}.core.mvp.ActivityRouter;

import java.util.Arrays;
import java.util.List;

import javax.inject.Inject;

/**
 * Created by vladimir
 */
public class ${className}Activity extends MvpActivity {

    @Inject
    protected I${className}Presenter i${className}Presenter;

    public static void start(Activity activity){
 	Intent intent = new Intent(activity,${className}Activity.class);
        activity.startActivity(intent);
    }



    @Override
    public List<Presenter> setupPresenters() {
	App.getApp(this)
                .getAppComponent()
                .plus(new ${className}Component.Module())
                .inject(this);

        return Arrays.asList(i${className}Presenter);
    }

    @Override
    public ActivityRouter setupActivityRouter() {
        return new ${className}ActivityRouter();
    }
}

