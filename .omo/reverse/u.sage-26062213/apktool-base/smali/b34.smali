.class public final Lb34;
.super Lcm1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final n:Lvm1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lvm1;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lb34;->n:Lvm1;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b()Lvm1;
    .locals 0

    .line 1
    iget-object p0, p0, Lb34;->n:Lvm1;

    .line 2
    .line 3
    return-object p0
.end method
