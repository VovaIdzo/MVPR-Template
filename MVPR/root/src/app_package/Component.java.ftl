package ${packageName};

import ${rootPackageName}.core.android.App;
import ${rootPackageName}.core.di.scope.PerActivity;

import dagger.Module;
import dagger.Provides;
import dagger.Subcomponent;

/**
 * Created by vladimir on 29.03.17.
 */
@Subcomponent(modules = ${className}Component.Module.class)
@PerActivity
public interface ${className}Component {
    void inject(${className}Activity activity);

    @dagger.Module
    class Module{
        @PerActivity
        @Provides
        I${className}Presenter provideI${className}Presenter(App app){
            return new ${className}Presenter(app);
        }
    }
}

