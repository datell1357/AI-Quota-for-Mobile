.class public abstract Len3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final a(JLyq3;Lag1;)Ltr3;
    .locals 10

    .line 1
    invoke-static {p0, p1}, Lt70;->f(J)Lb80;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p3, v0}, Lag1;->f(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p3}, Lag1;->K()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Lrb0;->a:Lbx3;

    .line 16
    .line 17
    if-ne v1, v0, :cond_1

    .line 18
    .line 19
    :cond_0
    invoke-static {p0, p1}, Lt70;->f(J)Lb80;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Ll9;->C:Ll9;

    .line 24
    .line 25
    new-instance v2, Lc8;

    .line 26
    .line 27
    const/16 v3, 0x8

    .line 28
    .line 29
    invoke-direct {v2, v3, v0}, Lc8;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Le34;

    .line 33
    .line 34
    invoke-direct {v0, v1, v2}, Le34;-><init>(Lpe1;Lpe1;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, v0}, Lag1;->g0(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    move-object v1, v0

    .line 41
    :cond_1
    move-object v3, v1

    .line 42
    check-cast v3, Le34;

    .line 43
    .line 44
    new-instance v2, Lt70;

    .line 45
    .line 46
    invoke-direct {v2, p0, p1}, Lt70;-><init>(J)V

    .line 47
    .line 48
    .line 49
    const/4 v8, 0x0

    .line 50
    const/16 v9, 0x8

    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    const-string v6, "ColorAnimation"

    .line 54
    .line 55
    move-object v4, p2

    .line 56
    move-object v7, p3

    .line 57
    invoke-static/range {v2 .. v9}, Lsd;->b(Ljava/lang/Object;Le34;Lve;Ljava/lang/Float;Ljava/lang/String;Lag1;II)Ltr3;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method
