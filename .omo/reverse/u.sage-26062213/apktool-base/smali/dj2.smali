.class public final Ldj2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lb81;


# static fields
.field public static final o:Ldj2;


# instance fields
.field public final synthetic n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ldj2;

    .line 2
    .line 3
    invoke-direct {v0}, Ldj2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ldj2;->o:Ldj2;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ldj2;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lu/sage/a;)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Ldj2;->n:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final m(Ljava/lang/Object;Ldh0;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Ldj2;->n:I

    .line 2
    .line 3
    sget-object p2, Lt64;->a:Lt64;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-object p2

    .line 14
    :pswitch_0
    check-cast p1, Lsp;

    .line 15
    .line 16
    return-object p2

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
