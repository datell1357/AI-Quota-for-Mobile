.class public final Lh84;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic a:Lo20;


# direct methods
.method public constructor <init>(Ln84;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo20;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p7, p0, Lh84;->a:Lo20;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    sget-object p1, Lez3;->a:Lra3;

    .line 4
    .line 5
    iget-object p0, p0, Lh84;->a:Lo20;

    .line 6
    .line 7
    invoke-virtual {p0}, Lo20;->w()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    new-array p0, p0, [Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lra3;->c([Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
