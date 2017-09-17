package ${packageName};

import android.content.Context;

import ${rootPackageName}.core.mvp.ActivityRouter;
import ${rootPackageName}.core.android.RouteRule;
import ${rootPackageName}.core.mvp.BaseView;


import java.util.Arrays;
import java.util.List;

/**
 * Created by vladimir
 */
public class ${className}ActivityRouter extends ActivityRouter {

    @Override
    public List<RouteRule> createRoutes(Context context) {
        return Arrays.asList(
                new RouteRule(${className}Presenter.TAG, ${className}View.TAG, true)
        );
    }

    @Override
    public BaseView createView(Context context, String ViewTag) {
        if (ViewTag.equals(${className}View.TAG))
            return new ${className}View(context);

        return null;
    }
}

