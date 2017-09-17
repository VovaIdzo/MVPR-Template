package ${packageName};

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by vladimir
 */
public class ${className}Adapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> implements View.OnClickListener {
    public final static int HEADER = 0;
    private final static int BODY = 1;
    private final LayoutInflater inflater;

    private List<${dvoName}> items;
    private OnItemClickListener<${dvoName}> onItemClickListener;

    public ${className}Adapter(Context context, OnItemClickListener<${dvoName}> onItemClickListener) {
        this.inflater = LayoutInflater.from(context);
        this.items = new ArrayList<>();

        this.onItemClickListener = onItemClickListener;
    }

    @Override
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return new ${className}ViewHolder(inflater.inflate(R.layout., parent, false));
    }

    @Override
    public void onBindViewHolder(RecyclerView.ViewHolder h, int position) {
        final int type = getItemViewType(position);

        ${className}ViewHolder holder = (${className}ViewHolder) h;
        holder.show(items.get(position), position, this);
    }

    @Override
    public int getItemCount() {
        return items.size();
    }

    @Override
    public int getItemViewType(int position) {

        return BODY;
    }

    @Override
    public void onClick(View view) {
        int pos = (int) view.getTag();
        onItemClickListener.onItemClicked(items.get(pos));
    }

    public void showNewItems(List<${dvoName}> dvo) {
        this.items.clear();
        this.items.addAll(dvo);
        notifyDataSetChanged();
    }
}

