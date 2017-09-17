package ${packageName};

import android.support.v4.content.ContextCompat;
import android.view.View;
import android.support.v7.widget.RecyclerView;

import butterknife.BindView;
import butterknife.ButterKnife;


/**
 * Created by vladimir
 */
public class ${className}ViewHolder extends RecyclerView.ViewHolder {

    public ${className}ViewHolder(View itemView) {
        super(itemView);
        ButterKnife.bind(this, itemView);
    }

    public void show(${dvoName} dvo, int pos, View.OnClickListener onCategoryClickListener) {



        itemView.setOnClickListener(onCategoryClickListener);
        itemView.setTag(pos);
    }
}

