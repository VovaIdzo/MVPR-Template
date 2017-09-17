package ${packageName};

import ${rootPackageName}.core.android.App;
import ${rootPackageName}.core.mvp.BasePresenter;
import ${rootPackageName}.core.mvp.PopupView;

/**
 * Created by vladimir
 */
public class ${className}Presenter extends BasePresenter<I${className}View> implements I${className}Presenter {

    private App app;

    public ${className}Presenter(App app) {
        this.app = app;
    }


    @Override
    protected void onViewAttached() {
        super.onViewAttached();

      
    }

    @Override
    protected void handleError(Throwable throwable) {
        handleDefaultsErrors(app, throwable);

        if (getView() == null) return;

        
    }

    @Override
    public String getTag() {
        return TAG;
    }
}

