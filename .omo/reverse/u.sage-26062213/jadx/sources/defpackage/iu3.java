package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.SubMenu;
import com.google.android.gms.auth.blockstore.BlockstoreClient;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class iu3 extends MenuInflater {
    public static final Class[] e;
    public static final Class[] f;
    public final Object[] a;
    public final Object[] b;
    public final Context c;
    public Object d;

    static {
        Class[] clsArr = {Context.class};
        e = clsArr;
        f = clsArr;
    }

    public iu3(Context context) {
        super(context);
        this.c = context;
        Object[] objArr = {context};
        this.a = objArr;
        this.b = objArr;
    }

    public static Object a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? a(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    public final void b(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
        int i;
        XmlPullParser xmlPullParser2;
        ColorStateList colorStateList;
        int resourceId;
        hu3 hu3Var = new hu3(this, menu);
        int eventType = xmlPullParser.getEventType();
        while (true) {
            i = 2;
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (!name.equals("menu")) {
                    throw new RuntimeException("Expecting menu, got ".concat(name));
                }
                eventType = xmlPullParser.next();
            } else {
                eventType = xmlPullParser.next();
                if (eventType == 1) {
                    break;
                }
            }
        }
        boolean z = false;
        boolean z2 = false;
        String str = null;
        while (!z) {
            if (eventType == 1) {
                throw new RuntimeException("Unexpected end of document");
            }
            Menu menu2 = hu3Var.a;
            if (eventType != i) {
                if (eventType != 3) {
                    xmlPullParser2 = xmlPullParser;
                    z = z;
                } else {
                    String name2 = xmlPullParser.getName();
                    if (z2 && name2.equals(str)) {
                        xmlPullParser2 = xmlPullParser;
                        z2 = false;
                        str = null;
                    } else {
                        if (name2.equals("group")) {
                            hu3Var.b = 0;
                            hu3Var.c = 0;
                            hu3Var.d = 0;
                            hu3Var.e = 0;
                            hu3Var.f = true;
                            hu3Var.g = true;
                        } else if (name2.equals("item")) {
                            if (!hu3Var.h) {
                                hu3Var.h = true;
                                hu3Var.b(menu2.add(hu3Var.b, hu3Var.i, hu3Var.j, hu3Var.k));
                            }
                        } else if (name2.equals("menu")) {
                            xmlPullParser2 = xmlPullParser;
                            z = true;
                        }
                        xmlPullParser2 = xmlPullParser;
                        z = z;
                    }
                }
                eventType = xmlPullParser2.next();
                i = 2;
                z = z;
                z2 = z2;
            } else {
                if (!z2) {
                    String name3 = xmlPullParser.getName();
                    boolean zEquals = name3.equals("group");
                    Context context = this.c;
                    if (zEquals) {
                        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, i13.l);
                        hu3Var.b = typedArrayObtainStyledAttributes.getResourceId(1, 0);
                        hu3Var.c = typedArrayObtainStyledAttributes.getInt(3, 0);
                        hu3Var.d = typedArrayObtainStyledAttributes.getInt(4, 0);
                        hu3Var.e = typedArrayObtainStyledAttributes.getInt(5, 0);
                        hu3Var.f = typedArrayObtainStyledAttributes.getBoolean(2, true);
                        hu3Var.g = typedArrayObtainStyledAttributes.getBoolean(0, true);
                        typedArrayObtainStyledAttributes.recycle();
                    } else {
                        if (name3.equals("item")) {
                            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, i13.m);
                            hu3Var.i = typedArrayObtainStyledAttributes2.getResourceId(2, 0);
                            hu3Var.j = (typedArrayObtainStyledAttributes2.getInt(5, hu3Var.c) & (-65536)) | (typedArrayObtainStyledAttributes2.getInt(6, hu3Var.d) & 65535);
                            hu3Var.k = typedArrayObtainStyledAttributes2.getText(7);
                            hu3Var.l = typedArrayObtainStyledAttributes2.getText(8);
                            hu3Var.m = typedArrayObtainStyledAttributes2.getResourceId(0, 0);
                            String string = typedArrayObtainStyledAttributes2.getString(9);
                            hu3Var.n = string == null ? (char) 0 : string.charAt(0);
                            hu3Var.o = typedArrayObtainStyledAttributes2.getInt(16, BlockstoreClient.MAX_SIZE);
                            String string2 = typedArrayObtainStyledAttributes2.getString(10);
                            hu3Var.p = string2 == null ? (char) 0 : string2.charAt(0);
                            hu3Var.q = typedArrayObtainStyledAttributes2.getInt(20, BlockstoreClient.MAX_SIZE);
                            if (typedArrayObtainStyledAttributes2.hasValue(11)) {
                                hu3Var.r = typedArrayObtainStyledAttributes2.getBoolean(11, false) ? 1 : 0;
                            } else {
                                hu3Var.r = hu3Var.e;
                            }
                            hu3Var.s = typedArrayObtainStyledAttributes2.getBoolean(3, false);
                            hu3Var.t = typedArrayObtainStyledAttributes2.getBoolean(4, hu3Var.f);
                            hu3Var.f129u = typedArrayObtainStyledAttributes2.getBoolean(1, hu3Var.g);
                            hu3Var.v = typedArrayObtainStyledAttributes2.getInt(21, -1);
                            hu3Var.y = typedArrayObtainStyledAttributes2.getString(12);
                            hu3Var.w = typedArrayObtainStyledAttributes2.getResourceId(13, 0);
                            hu3Var.x = typedArrayObtainStyledAttributes2.getString(15);
                            String string3 = typedArrayObtainStyledAttributes2.getString(14);
                            boolean z3 = string3 != null;
                            if (z3 && hu3Var.w == 0 && hu3Var.x == null) {
                                if (hu3Var.a(string3, f, this.b) != null) {
                                    mk0.b();
                                    return;
                                }
                            } else if (z3) {
                                Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                            }
                            hu3Var.z = typedArrayObtainStyledAttributes2.getText(17);
                            hu3Var.A = typedArrayObtainStyledAttributes2.getText(22);
                            if (typedArrayObtainStyledAttributes2.hasValue(19)) {
                                hu3Var.C = sx0.b(typedArrayObtainStyledAttributes2.getInt(19, -1), hu3Var.C);
                            } else {
                                hu3Var.C = null;
                            }
                            if (typedArrayObtainStyledAttributes2.hasValue(18)) {
                                if (!typedArrayObtainStyledAttributes2.hasValue(18) || (resourceId = typedArrayObtainStyledAttributes2.getResourceId(18, 0)) == 0 || (colorStateList = zf5.E(context, resourceId)) == null) {
                                    colorStateList = typedArrayObtainStyledAttributes2.getColorStateList(18);
                                }
                                hu3Var.B = colorStateList;
                            } else {
                                hu3Var.B = null;
                            }
                            typedArrayObtainStyledAttributes2.recycle();
                            hu3Var.h = false;
                            xmlPullParser2 = xmlPullParser;
                        } else if (name3.equals("menu")) {
                            hu3Var.h = true;
                            SubMenu subMenuAddSubMenu = menu2.addSubMenu(hu3Var.b, hu3Var.i, hu3Var.j, hu3Var.k);
                            hu3Var.b(subMenuAddSubMenu.getItem());
                            xmlPullParser2 = xmlPullParser;
                            b(xmlPullParser2, attributeSet, subMenuAddSubMenu);
                        } else {
                            xmlPullParser2 = xmlPullParser;
                            str = name3;
                            z2 = true;
                        }
                        eventType = xmlPullParser2.next();
                        i = 2;
                        z = z;
                        z2 = z2;
                    }
                }
                xmlPullParser2 = xmlPullParser;
                z = z;
            }
            eventType = xmlPullParser2.next();
            i = 2;
            z = z;
            z2 = z2;
        }
    }

    @Override // android.view.MenuInflater
    public final void inflate(int i, Menu menu) {
        if (!(menu instanceof ub2)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser layout = null;
        boolean z = false;
        try {
            try {
                layout = this.c.getResources().getLayout(i);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(layout);
                ub2 ub2Var = (ub2) menu;
                if (!ub2Var.m) {
                    ub2Var.s();
                    z = true;
                }
                b(layout, attributeSetAsAttributeSet, menu);
                if (z) {
                    ((ub2) menu).r();
                }
                layout.close();
            } catch (IOException e2) {
                throw new InflateException("Error inflating menu XML", e2);
            } catch (XmlPullParserException e3) {
                throw new InflateException("Error inflating menu XML", e3);
            }
        } catch (Throwable th) {
            if (z) {
                ((ub2) menu).r();
            }
            if (layout != null) {
                layout.close();
            }
            throw th;
        }
    }
}
