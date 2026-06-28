package defpackage;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class ub2 implements Menu {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int[] f357u = {1, 4, 5, 3, 2, 0};
    public final Context a;
    public final Resources b;
    public boolean c;
    public final boolean d;
    public wu4 e;
    public final ArrayList f;
    public final ArrayList g;
    public boolean h;
    public final ArrayList i;
    public final ArrayList j;
    public boolean k;
    public CharSequence l;
    public zb2 s;
    public boolean m = false;
    public boolean n = false;
    public boolean o = false;
    public boolean p = false;
    public final ArrayList q = new ArrayList();
    public final CopyOnWriteArrayList r = new CopyOnWriteArrayList();
    public boolean t = false;

    public ub2(Context context) {
        boolean zT;
        boolean z = false;
        this.a = context;
        Resources resources = context.getResources();
        this.b = resources;
        this.f = new ArrayList();
        this.g = new ArrayList();
        this.h = true;
        this.i = new ArrayList();
        this.j = new ArrayList();
        this.k = true;
        if (resources.getConfiguration().keyboard != 1) {
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            Method method = ob4.a;
            if (Build.VERSION.SDK_INT >= 28) {
                zT = tf.t(viewConfiguration);
            } else {
                Resources resources2 = context.getResources();
                int identifier = resources2.getIdentifier("config_showMenuShortcutsWhenKeyboardPresent", "bool", "android");
                zT = identifier != 0 && resources2.getBoolean(identifier);
            }
            if (zT) {
                z = true;
            }
        }
        this.d = z;
    }

    public final zb2 a(int i, int i2, int i3, CharSequence charSequence) {
        int i4;
        int i5 = ((-65536) & i3) >> 16;
        if (i5 < 0 || i5 >= 6) {
            k21.f("order does not contain a valid category.");
            return null;
        }
        int i6 = (f357u[i5] << 16) | (65535 & i3);
        zb2 zb2Var = new zb2(this, i, i2, i3, i6, charSequence);
        ArrayList arrayList = this.f;
        int size = arrayList.size() - 1;
        while (true) {
            if (size < 0) {
                i4 = 0;
                break;
            }
            if (((zb2) arrayList.get(size)).d <= i6) {
                i4 = size + 1;
                break;
            }
            size--;
        }
        arrayList.add(i4, zb2Var);
        o(true);
        return zb2Var;
    }

    @Override // android.view.Menu
    public final MenuItem add(int i) {
        return a(0, 0, 0, this.b.getString(i));
    }

    @Override // android.view.Menu
    public final int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        int i5;
        PackageManager packageManager = this.a.getPackageManager();
        List<ResolveInfo> listQueryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = listQueryIntentActivityOptions != null ? listQueryIntentActivityOptions.size() : 0;
        if ((i4 & 1) == 0) {
            removeGroup(i);
        }
        for (int i6 = 0; i6 < size; i6++) {
            ResolveInfo resolveInfo = listQueryIntentActivityOptions.get(i6);
            int i7 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i7 < 0 ? intent : intentArr[i7]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            zb2 zb2VarA = a(i, i2, i3, resolveInfo.loadLabel(packageManager));
            zb2VarA.setIcon(resolveInfo.loadIcon(packageManager));
            zb2VarA.g = intent2;
            if (menuItemArr != null && (i5 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i5] = zb2VarA;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        zb2 zb2VarA = a(i, i2, i3, charSequence);
        kt3 kt3Var = new kt3(this.a, this, zb2VarA);
        zb2VarA.o = kt3Var;
        kt3Var.setHeaderTitle(zb2VarA.e);
        return kt3Var;
    }

    public final void b(ic2 ic2Var, Context context) {
        this.r.add(new WeakReference(ic2Var));
        ic2Var.h(context, this);
        this.k = true;
    }

    public final void c(boolean z) {
        if (this.p) {
            return;
        }
        this.p = true;
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.r;
        for (WeakReference weakReference : copyOnWriteArrayList) {
            ic2 ic2Var = (ic2) weakReference.get();
            if (ic2Var == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                ic2Var.b(this, z);
            }
        }
        this.p = false;
    }

    @Override // android.view.Menu
    public final void clear() {
        zb2 zb2Var = this.s;
        if (zb2Var != null) {
            d(zb2Var);
        }
        this.f.clear();
        o(true);
    }

    public final void clearHeader() {
        this.l = null;
        o(false);
    }

    @Override // android.view.Menu
    public final void close() {
        c(true);
    }

    public boolean d(zb2 zb2Var) {
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.r;
        boolean zC = false;
        if (!copyOnWriteArrayList.isEmpty() && this.s == zb2Var) {
            s();
            for (WeakReference weakReference : copyOnWriteArrayList) {
                ic2 ic2Var = (ic2) weakReference.get();
                if (ic2Var != null) {
                    zC = ic2Var.c(zb2Var);
                    if (zC) {
                        break;
                    }
                } else {
                    copyOnWriteArrayList.remove(weakReference);
                }
            }
            r();
            if (zC) {
                this.s = null;
            }
        }
        return zC;
    }

    public boolean e(ub2 ub2Var, MenuItem menuItem) {
        x5 x5Var;
        wu4 wu4Var = this.e;
        return (wu4Var == null || (x5Var = ((ActionMenuView) wu4Var.o).L) == null || !((Toolbar) ((dd1) x5Var).o).T.a(menuItem)) ? false : true;
    }

    public boolean f(zb2 zb2Var) {
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.r;
        boolean zE = false;
        if (copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        s();
        for (WeakReference weakReference : copyOnWriteArrayList) {
            ic2 ic2Var = (ic2) weakReference.get();
            if (ic2Var != null) {
                zE = ic2Var.e(zb2Var);
                if (zE) {
                    break;
                }
            } else {
                copyOnWriteArrayList.remove(weakReference);
            }
        }
        r();
        if (zE) {
            this.s = zb2Var;
        }
        return zE;
    }

    @Override // android.view.Menu
    public final MenuItem findItem(int i) {
        MenuItem menuItemFindItem;
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            zb2 zb2Var = (zb2) arrayList.get(i2);
            if (zb2Var.a == i) {
                return zb2Var;
            }
            if (zb2Var.hasSubMenu() && (menuItemFindItem = zb2Var.o.findItem(i)) != null) {
                return menuItemFindItem;
            }
        }
        return null;
    }

    public final zb2 g(int i, KeyEvent keyEvent) {
        ArrayList arrayList = this.q;
        arrayList.clear();
        h(arrayList, i, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return (zb2) arrayList.get(0);
        }
        boolean zM = m();
        for (int i2 = 0; i2 < size; i2++) {
            zb2 zb2Var = (zb2) arrayList.get(i2);
            char c = zM ? zb2Var.j : zb2Var.h;
            char[] cArr = keyData.meta;
            if ((c == cArr[0] && (metaState & 2) == 0) || ((c == cArr[2] && (metaState & 2) != 0) || (zM && c == '\b' && i == 67))) {
                return zb2Var;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public final MenuItem getItem(int i) {
        return (MenuItem) this.f.get(i);
    }

    public final void h(List list, int i, KeyEvent keyEvent) {
        boolean zM = m();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i == 67) {
            ArrayList arrayList = this.f;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                zb2 zb2Var = (zb2) arrayList.get(i2);
                if (zb2Var.hasSubMenu()) {
                    zb2Var.o.h(list, i, keyEvent);
                }
                char c = zM ? zb2Var.j : zb2Var.h;
                if ((modifiers & 69647) == ((zM ? zb2Var.k : zb2Var.i) & 69647) && c != 0) {
                    char[] cArr = keyData.meta;
                    if ((c == cArr[0] || c == cArr[2] || (zM && c == '\b' && i == 67)) && zb2Var.isEnabled()) {
                        list.add(zb2Var);
                    }
                }
            }
        }
    }

    @Override // android.view.Menu
    public final boolean hasVisibleItems() {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (((zb2) arrayList.get(i)).isVisible()) {
                return true;
            }
        }
        return false;
    }

    public final void i() {
        ArrayList arrayListK = k();
        if (this.k) {
            CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.r;
            boolean zJ = false;
            for (WeakReference weakReference : copyOnWriteArrayList) {
                ic2 ic2Var = (ic2) weakReference.get();
                if (ic2Var == null) {
                    copyOnWriteArrayList.remove(weakReference);
                } else {
                    zJ |= ic2Var.j();
                }
            }
            ArrayList arrayList = this.i;
            ArrayList arrayList2 = this.j;
            if (zJ) {
                arrayList.clear();
                arrayList2.clear();
                int size = arrayListK.size();
                for (int i = 0; i < size; i++) {
                    zb2 zb2Var = (zb2) arrayListK.get(i);
                    if ((zb2Var.x & 32) == 32) {
                        arrayList.add(zb2Var);
                    } else {
                        arrayList2.add(zb2Var);
                    }
                }
            } else {
                arrayList.clear();
                arrayList2.clear();
                arrayList2.addAll(k());
            }
            this.k = false;
        }
    }

    @Override // android.view.Menu
    public final boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return g(i, keyEvent) != null;
    }

    public final ArrayList k() {
        boolean z = this.h;
        ArrayList arrayList = this.g;
        if (!z) {
            return arrayList;
        }
        arrayList.clear();
        ArrayList arrayList2 = this.f;
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            zb2 zb2Var = (zb2) arrayList2.get(i);
            if (zb2Var.isVisible()) {
                arrayList.add(zb2Var);
            }
        }
        this.h = false;
        this.k = true;
        return arrayList;
    }

    public boolean l() {
        return this.t;
    }

    public boolean m() {
        return this.c;
    }

    public boolean n() {
        return this.d;
    }

    public final void o(boolean z) {
        if (this.m) {
            this.n = true;
            if (z) {
                this.o = true;
                return;
            }
            return;
        }
        if (z) {
            this.h = true;
            this.k = true;
        }
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.r;
        if (copyOnWriteArrayList.isEmpty()) {
            return;
        }
        s();
        for (WeakReference weakReference : copyOnWriteArrayList) {
            ic2 ic2Var = (ic2) weakReference.get();
            if (ic2Var == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                ic2Var.f();
            }
        }
        r();
    }

    public final boolean p(MenuItem menuItem, ac2 ac2Var, int i) {
        boolean zExpandActionView;
        zb2 zb2Var = (zb2) menuItem;
        if (zb2Var == null || !zb2Var.isEnabled()) {
            return false;
        }
        ub2 ub2Var = zb2Var.n;
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = zb2Var.p;
        if ((onMenuItemClickListener == null || !onMenuItemClickListener.onMenuItemClick(zb2Var)) && !ub2Var.e(ub2Var, zb2Var)) {
            Intent intent = zb2Var.g;
            if (intent != null) {
                try {
                    ub2Var.a.startActivity(intent);
                    zExpandActionView = true;
                } catch (ActivityNotFoundException e) {
                    Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e);
                    zExpandActionView = false;
                }
            }
            zExpandActionView = false;
        } else {
            zExpandActionView = true;
        }
        if ((zb2Var.y & 8) != 0 && zb2Var.z != null) {
            zExpandActionView |= zb2Var.expandActionView();
            if (zExpandActionView) {
                c(true);
            }
        } else if (zb2Var.hasSubMenu()) {
            if ((i & 4) == 0) {
                c(false);
            }
            if (!zb2Var.hasSubMenu()) {
                kt3 kt3Var = new kt3(this.a, this, zb2Var);
                zb2Var.o = kt3Var;
                kt3Var.setHeaderTitle(zb2Var.e);
            }
            kt3 kt3Var2 = zb2Var.o;
            CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.r;
            if (!copyOnWriteArrayList.isEmpty()) {
                zI = ac2Var != null ? ac2Var.i(kt3Var2) : false;
                for (WeakReference weakReference : copyOnWriteArrayList) {
                    ic2 ic2Var = (ic2) weakReference.get();
                    if (ic2Var == null) {
                        copyOnWriteArrayList.remove(weakReference);
                    } else if (!zI) {
                        zI = ic2Var.i(kt3Var2);
                    }
                }
            }
            zExpandActionView |= zI;
            if (!zExpandActionView) {
                c(true);
            }
        } else if ((i & 1) == 0) {
            c(true);
        }
        return zExpandActionView;
    }

    @Override // android.view.Menu
    public final boolean performIdentifierAction(int i, int i2) {
        return p(findItem(i), null, i2);
    }

    @Override // android.view.Menu
    public final boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        zb2 zb2VarG = g(i, keyEvent);
        boolean zP = zb2VarG != null ? p(zb2VarG, null, i2) : false;
        if ((i2 & 2) != 0) {
            c(true);
        }
        return zP;
    }

    public final void q(int i, CharSequence charSequence, int i2, View view) {
        if (view != null) {
            this.l = null;
        } else {
            if (i > 0) {
                this.l = this.b.getText(i);
            } else if (charSequence != null) {
                this.l = charSequence;
            }
            if (i2 > 0) {
                this.a.getDrawable(i2);
            }
        }
        o(false);
    }

    public final void r() {
        this.m = false;
        if (this.n) {
            this.n = false;
            o(this.o);
        }
    }

    @Override // android.view.Menu
    public final void removeGroup(int i) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                i3 = -1;
                break;
            } else if (((zb2) arrayList.get(i3)).b == i) {
                break;
            } else {
                i3++;
            }
        }
        if (i3 >= 0) {
            int size2 = arrayList.size() - i3;
            while (true) {
                int i4 = i2 + 1;
                if (i2 >= size2 || ((zb2) arrayList.get(i3)).b != i) {
                    break;
                }
                if (i3 >= 0 && i3 < arrayList.size()) {
                    arrayList.remove(i3);
                }
                i2 = i4;
            }
            o(true);
        }
    }

    @Override // android.view.Menu
    public final void removeItem(int i) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            } else if (((zb2) arrayList.get(i2)).a == i) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 < 0 || i2 >= arrayList.size()) {
            return;
        }
        arrayList.remove(i2);
        o(true);
    }

    public final void s() {
        if (this.m) {
            return;
        }
        this.m = true;
        this.n = false;
        this.o = false;
    }

    @Override // android.view.Menu
    public final void setGroupCheckable(int i, boolean z, boolean z2) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            zb2 zb2Var = (zb2) arrayList.get(i2);
            if (zb2Var.b == i) {
                zb2Var.x = (zb2Var.x & (-5)) | (z2 ? 4 : 0);
                zb2Var.setCheckable(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.t = z;
    }

    @Override // android.view.Menu
    public final void setGroupEnabled(int i, boolean z) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            zb2 zb2Var = (zb2) arrayList.get(i2);
            if (zb2Var.b == i) {
                zb2Var.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public final void setGroupVisible(int i, boolean z) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        boolean z2 = false;
        for (int i2 = 0; i2 < size; i2++) {
            zb2 zb2Var = (zb2) arrayList.get(i2);
            if (zb2Var.b == i) {
                int i3 = zb2Var.x;
                int i4 = (i3 & (-9)) | (z ? 0 : 8);
                zb2Var.x = i4;
                if (i3 != i4) {
                    z2 = true;
                }
            }
        }
        if (z2) {
            o(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.c = z;
        o(false);
    }

    @Override // android.view.Menu
    public final int size() {
        return this.f.size();
    }

    @Override // android.view.Menu
    public final MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public final MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return a(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public final MenuItem add(int i, int i2, int i3, int i4) {
        return a(i, i2, i3, this.b.getString(i4));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i) {
        return addSubMenu(0, 0, 0, this.b.getString(i));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addSubMenu(i, i2, i3, this.b.getString(i4));
    }

    public ub2 j() {
        return this;
    }
}
