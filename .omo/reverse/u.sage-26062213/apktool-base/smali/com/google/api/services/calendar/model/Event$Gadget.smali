.class public final Lcom/google/api/services/calendar/model/Event$Gadget;
.super Lcom/google/api/client/json/GenericJson;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/calendar/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Gadget"
.end annotation


# instance fields
.field private display:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private height:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private iconLink:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private link:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private preferences:Ljava/util/Map;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private width:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event$Gadget;->clone()Lcom/google/api/services/calendar/model/Event$Gadget;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event$Gadget;->clone()Lcom/google/api/services/calendar/model/Event$Gadget;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/google/api/services/calendar/model/Event$Gadget;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/services/calendar/model/Event$Gadget;

    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event$Gadget;->clone()Lcom/google/api/services/calendar/model/Event$Gadget;

    move-result-object p0

    return-object p0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/Event$Gadget;->display:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getHeight()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/Event$Gadget;->height:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIconLink()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/Event$Gadget;->iconLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getLink()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/Event$Gadget;->link:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPreferences()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/Event$Gadget;->preferences:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/Event$Gadget;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/Event$Gadget;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWidth()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/Event$Gadget;->width:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Event$Gadget;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Event$Gadget;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Event$Gadget;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Event$Gadget;

    move-result-object p0

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Event$Gadget;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/services/calendar/model/Event$Gadget;

    .line 6
    .line 7
    return-object p0
.end method

.method public setDisplay(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event$Gadget;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event$Gadget;->display:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setHeight(Ljava/lang/Integer;)Lcom/google/api/services/calendar/model/Event$Gadget;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event$Gadget;->height:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public setIconLink(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event$Gadget;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event$Gadget;->iconLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLink(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event$Gadget;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event$Gadget;->link:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPreferences(Ljava/util/Map;)Lcom/google/api/services/calendar/model/Event$Gadget;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/calendar/model/Event$Gadget;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event$Gadget;->preferences:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event$Gadget;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event$Gadget;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event$Gadget;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event$Gadget;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setWidth(Ljava/lang/Integer;)Lcom/google/api/services/calendar/model/Event$Gadget;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event$Gadget;->width:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method
