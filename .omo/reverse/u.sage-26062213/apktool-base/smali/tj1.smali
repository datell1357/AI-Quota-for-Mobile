.class public final Ltj1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lzb4;


# static fields
.field public static final c:Lb21;


# instance fields
.field public final a:Lzb4;

.field public final b:Lu6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb21;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Lb21;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ltj1;->c:Lb21;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lzb4;Lqv3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltj1;->a:Lzb4;

    .line 5
    .line 6
    new-instance p1, Lu6;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, v0, p2}, Lu6;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Ltj1;->b:Lu6;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lvb4;
    .locals 1

    .line 1
    sget-object v0, Le53;->t:Le53;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Le53;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Ltj1;->a:Lzb4;

    .line 10
    .line 11
    invoke-interface {p0, p1}, Lzb4;->a(Ljava/lang/Class;)Lvb4;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string p0, "`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error."

    .line 17
    .line 18
    invoke-static {p0}, Lp61;->s(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public final b(Ljava/lang/Class;Lof2;)Lvb4;
    .locals 1

    .line 1
    sget-object v0, Le53;->t:Le53;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Le53;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Ltj1;->b:Lu6;

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lu6;->b(Ljava/lang/Class;Lof2;)Lvb4;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    iget-object p0, p0, Ltj1;->a:Lzb4;

    .line 17
    .line 18
    invoke-interface {p0, p1, p2}, Lzb4;->b(Ljava/lang/Class;Lof2;)Lvb4;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
