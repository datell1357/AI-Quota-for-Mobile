package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xc1 implements LayoutInflater.Factory2 {
    public final hd1 n;

    public xc1(hd1 hd1Var) {
        this.n = hd1Var;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        boolean zIsAssignableFrom;
        pd1 pd1VarF;
        boolean zEquals = tc1.class.getName().equals(str);
        hd1 hd1Var = this.n;
        if (zEquals) {
            return new tc1(context, attributeSet, hd1Var);
        }
        if ("fragment".equals(str)) {
            String attributeValue = attributeSet.getAttributeValue(null, "class");
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, g13.a);
            if (attributeValue == null) {
                attributeValue = typedArrayObtainStyledAttributes.getString(0);
            }
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(1, -1);
            String string = typedArrayObtainStyledAttributes.getString(2);
            typedArrayObtainStyledAttributes.recycle();
            if (attributeValue != null) {
                try {
                    zIsAssignableFrom = lc1.class.isAssignableFrom(bd1.a(context.getClassLoader(), attributeValue));
                } catch (ClassNotFoundException unused) {
                    zIsAssignableFrom = false;
                }
                if (zIsAssignableFrom) {
                    int id = view != null ? view.getId() : 0;
                    if (id == -1 && resourceId == -1 && string == null) {
                        throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
                    }
                    lc1 lc1VarA = resourceId != -1 ? hd1Var.A(resourceId) : null;
                    if (lc1VarA == null && string != null) {
                        lc1VarA = hd1Var.B(string);
                    }
                    if (lc1VarA == null && id != -1) {
                        lc1VarA = hd1Var.A(id);
                    }
                    if (lc1VarA == null) {
                        bd1 bd1VarD = hd1Var.D();
                        context.getClassLoader();
                        lc1VarA = lc1.instantiate(bd1VarD.a.t.o, attributeValue, null);
                        lc1VarA.mFromLayout = true;
                        lc1VarA.mFragmentId = resourceId != 0 ? resourceId : id;
                        lc1VarA.mContainerId = id;
                        lc1VarA.mTag = string;
                        lc1VarA.mInLayout = true;
                        lc1VarA.mFragmentManager = hd1Var;
                        vc1 vc1Var = hd1Var.t;
                        lc1VarA.mHost = vc1Var;
                        lc1VarA.onInflate((Context) vc1Var.o, attributeSet, lc1VarA.mSavedFragmentState);
                        pd1VarF = hd1Var.a(lc1VarA);
                        if (hd1.G(2)) {
                            Log.v("FragmentManager", "Fragment " + lc1VarA + " has been inflated via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                        }
                    } else {
                        if (lc1VarA.mInLayout) {
                            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
                        }
                        lc1VarA.mInLayout = true;
                        lc1VarA.mFragmentManager = hd1Var;
                        vc1 vc1Var2 = hd1Var.t;
                        lc1VarA.mHost = vc1Var2;
                        lc1VarA.onInflate((Context) vc1Var2.o, attributeSet, lc1VarA.mSavedFragmentState);
                        pd1VarF = hd1Var.f(lc1VarA);
                        if (hd1.G(2)) {
                            Log.v("FragmentManager", "Retained Fragment " + lc1VarA + " has been re-attached via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                        }
                    }
                    ViewGroup viewGroup = (ViewGroup) view;
                    rd1 rd1Var = sd1.a;
                    sd1.b(new nd1(lc1VarA, "Attempting to use <fragment> tag to add fragment " + lc1VarA + " to container " + viewGroup));
                    sd1.a(lc1VarA).getClass();
                    lc1VarA.mContainer = viewGroup;
                    pd1VarF.j();
                    pd1VarF.i();
                    View view2 = lc1VarA.mView;
                    if (view2 == null) {
                        k21.n(di0.v("Fragment ", attributeValue, " did not create a view."));
                        return null;
                    }
                    if (resourceId != 0) {
                        view2.setId(resourceId);
                    }
                    if (lc1VarA.mView.getTag() == null) {
                        lc1VarA.mView.setTag(string);
                    }
                    lc1VarA.mView.addOnAttachStateChangeListener(new wc1(this, pd1VarF));
                    return lc1VarA.mView;
                }
            }
        }
        return null;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
