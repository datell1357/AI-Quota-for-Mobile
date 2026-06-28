.class public abstract Lch0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lsg0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lvg0;->c:Ljava/util/logging/Logger;

    .line 2
    .line 3
    new-instance v0, Lsg0;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, v1}, Lsg0;-><init>(I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lch0;->a:Lsg0;

    .line 10
    .line 11
    return-void
.end method
