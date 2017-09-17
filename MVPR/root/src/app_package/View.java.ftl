package ${packageName};

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.support.v7.widget.Toolbar;

import ${rootPackageName}.R;
import ${rootPackageName}.core.mvp.BaseView;

import butterknife.BindView;
import butterknife.ButterKnife;
import android.support.annotation.NonNull;

/**
 * Created by vladimir
 */
public class ${className}View extends BaseView<I${className}Presenter> implements I${className}View  {

    @BindView(R.id.toolbar)
    Toolbar vToolbar;
    @BindView(R.id.progress)
    View vProgress;

    public ${className}View(Context context) {
        super(context);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle saveInstanceState) {
        View view = inflater.inflate(R.layout., viewGroup, false);
        addUiBinder(ButterKnife.bind(this, view));
        setupToolbar(vToolbar, "", null,  view1 -> getActivity().onBackPressed());

        getPresenter().attachView(this);
        return view;
    }

    @NonNull
    @Override
    public String getViewTag() {
        return TAG;
    }

}

