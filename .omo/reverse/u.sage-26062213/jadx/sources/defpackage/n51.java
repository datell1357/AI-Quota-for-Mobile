package defpackage;

import java.io.File;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class n51 implements r60 {
    public final File a;
    public final oi3 b;
    public final vs1 c;
    public final cc d;
    public final AtomicBoolean e;
    public final hh2 f;

    public n51(File file, oi3 oi3Var, vs1 vs1Var, cc ccVar) {
        oi3Var.getClass();
        vs1Var.getClass();
        this.a = file;
        this.b = oi3Var;
        this.c = vs1Var;
        this.d = ccVar;
        this.e = new AtomicBoolean(false);
        this.f = new hh2();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0071 A[Catch: all -> 0x0072, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0072, blocks: (B:34:0x0071, B:43:0x0082, B:42:0x007f, B:39:0x007a), top: B:50:0x0020, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r6v0, types: [n51] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v12, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r7v0, types: [sm0] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v6, types: [boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(defpackage.sm0 r7, defpackage.fh0 r8) throws java.lang.Throwable {
        /*
            r6 = this;
            boolean r0 = r8 instanceof defpackage.l51
            if (r0 == 0) goto L13
            r0 = r8
            l51 r0 = (defpackage.l51) r0
            int r1 = r0.f176u
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f176u = r1
            goto L18
        L13:
            l51 r0 = new l51
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.s
            int r1 = r0.f176u
            hh2 r2 = r6.f
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L34
            if (r1 != r3) goto L2e
            boolean r6 = r0.q
            j51 r7 = r0.r
            defpackage.gg4.T(r8)     // Catch: java.lang.Throwable -> L2c
            goto L63
        L2c:
            r8 = move-exception
            goto L7a
        L2e:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r6)
            return r4
        L34:
            defpackage.gg4.T(r8)
            java.util.concurrent.atomic.AtomicBoolean r8 = r6.e
            boolean r8 = r8.get()
            if (r8 != 0) goto L8a
            boolean r8 = r2.g()
            j51 r1 = new j51     // Catch: java.lang.Throwable -> L83
            java.io.File r5 = r6.a     // Catch: java.lang.Throwable -> L83
            oi3 r6 = r6.b     // Catch: java.lang.Throwable -> L83
            r1.<init>(r5, r6)     // Catch: java.lang.Throwable -> L83
            java.lang.Boolean r6 = java.lang.Boolean.valueOf(r8)     // Catch: java.lang.Throwable -> L75
            r0.r = r1     // Catch: java.lang.Throwable -> L75
            r0.q = r8     // Catch: java.lang.Throwable -> L75
            r0.f176u = r3     // Catch: java.lang.Throwable -> L75
            java.lang.Object r6 = r7.d(r1, r6, r0)     // Catch: java.lang.Throwable -> L75
            ri0 r7 = defpackage.ri0.n
            if (r6 != r7) goto L5f
            return r7
        L5f:
            r7 = r8
            r8 = r6
            r6 = r7
            r7 = r1
        L63:
            r7.close()     // Catch: java.lang.Throwable -> L68
            r7 = r4
            goto L69
        L68:
            r7 = move-exception
        L69:
            if (r7 != 0) goto L71
            if (r6 == 0) goto L70
            r2.b(r4)
        L70:
            return r8
        L71:
            throw r7     // Catch: java.lang.Throwable -> L72
        L72:
            r7 = move-exception
            r8 = r6
            goto L84
        L75:
            r6 = move-exception
            r7 = r8
            r8 = r6
            r6 = r7
            r7 = r1
        L7a:
            r7.close()     // Catch: java.lang.Throwable -> L7e
            goto L82
        L7e:
            r7 = move-exception
            defpackage.on4.j(r8, r7)     // Catch: java.lang.Throwable -> L72
        L82:
            throw r8     // Catch: java.lang.Throwable -> L72
        L83:
            r7 = move-exception
        L84:
            if (r8 == 0) goto L89
            r2.b(r4)
        L89:
            throw r7
        L8a:
            java.lang.String r6 = "StorageConnection has already been disposed."
            defpackage.k21.n(r6)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n51.a(sm0, fh0):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c3 A[Catch: all -> 0x00fa, IOException -> 0x00fd, TRY_ENTER, TryCatch #8 {IOException -> 0x00fd, all -> 0x00fa, blocks: (B:42:0x00c3, B:44:0x00c9, B:46:0x00cf, B:50:0x00db, B:51:0x00f9, B:47:0x00d4, B:58:0x0107, B:65:0x0115, B:64:0x0112, B:61:0x010d), top: B:89:0x0025, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0107 A[Catch: all -> 0x00fa, IOException -> 0x00fd, TRY_ENTER, TRY_LEAVE, TryCatch #8 {IOException -> 0x00fd, all -> 0x00fa, blocks: (B:42:0x00c3, B:44:0x00c9, B:46:0x00cf, B:50:0x00db, B:51:0x00f9, B:47:0x00d4, B:58:0x0107, B:65:0x0115, B:64:0x0112, B:61:0x010d), top: B:89:0x0025, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x011f A[Catch: all -> 0x0116, TryCatch #3 {all -> 0x0116, blocks: (B:69:0x0119, B:71:0x011f, B:72:0x0122, B:32:0x0085, B:33:0x009f), top: B:83:0x0085 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /* JADX WARN: Type inference failed for: r10v0, types: [en0, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v12, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v3, types: [df1] */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7, types: [java.io.File, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v11, types: [hh2, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v17, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r11v19 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v21 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4, types: [fh2] */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r1v10, types: [fh2] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v2, types: [fh0, java.lang.Object, m51] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8, types: [fh2] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.io.File, java.lang.Object] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(defpackage.en0 r10, defpackage.fh0 r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n51.b(en0, fh0):java.lang.Object");
    }

    @Override // defpackage.r60
    public final void close() {
        this.e.set(true);
        this.d.a();
    }
}
