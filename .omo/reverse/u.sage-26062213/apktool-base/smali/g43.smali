.class public final Lg43;
.super Lf43;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final b:Lon2;


# direct methods
.method public constructor <init>(Lon2;Lh43;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lf43;-><init>(Lh43;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg43;->b:Lon2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lg43;->b:Lon2;

    .line 2
    .line 3
    invoke-interface {p0}, Lon2;->d()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final f(Ljava/lang/Object;Lww1;Le43;)V
    .locals 1

    .line 1
    iget-object p0, p3, Le43;->b:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    iget-object v0, p3, Le43;->f:Lg34;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Lg34;->b(Lww1;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-nez p2, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p3, Le43;->g:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    :goto_0
    iget-boolean p3, p3, Le43;->h:Z

    .line 18
    .line 19
    if-nez p3, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    const/4 p1, 0x0

    .line 26
    invoke-static {p0, p1}, Lc43;->d(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    new-instance p1, Lfw1;

    .line 31
    .line 32
    const-string p2, "Cannot set value of \'static final\' "

    .line 33
    .line 34
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const/4 p2, 0x5

    .line 39
    invoke-direct {p1, p0, p2}, Lv00;-><init>(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method
