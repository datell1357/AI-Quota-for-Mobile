.class public final Lgc5;
.super Lit4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final d:Lsg0;

.field public final e:Lpw3;

.field public final synthetic f:Lwc5;

.field public final synthetic g:Lwc5;


# direct methods
.method public constructor <init>(Lwc5;Lpw3;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lgc5;->g:Lwc5;

    .line 2
    .line 3
    new-instance p3, Lsg0;

    .line 4
    .line 5
    const-string v0, "OnRequestInstallCallback"

    .line 6
    .line 7
    invoke-direct {p3, v0}, Lsg0;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lgc5;->f:Lwc5;

    .line 11
    .line 12
    invoke-direct {p0}, Lit4;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string p1, "com.google.android.play.core.appupdate.protocol.IAppUpdateServiceCallback"

    .line 16
    .line 17
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object p3, p0, Lgc5;->d:Lsg0;

    .line 21
    .line 22
    iput-object p2, p0, Lgc5;->e:Lpw3;

    .line 23
    .line 24
    return-void
.end method
