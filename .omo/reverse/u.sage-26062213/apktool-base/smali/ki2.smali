.class public abstract Lki2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lu6;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lvq1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lvq1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lz82;

    .line 8
    .line 9
    const/16 v2, 0x9

    .line 10
    .line 11
    invoke-direct {v1, v2}, Lz82;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const-class v2, Lji2;

    .line 15
    .line 16
    invoke-static {v2}, Ly33;->a(Ljava/lang/Class;)Li50;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0, v2, v1}, Lvq1;->a(Li50;Lpe1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lvq1;->c()Lu6;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lki2;->a:Lu6;

    .line 28
    .line 29
    return-void
.end method
