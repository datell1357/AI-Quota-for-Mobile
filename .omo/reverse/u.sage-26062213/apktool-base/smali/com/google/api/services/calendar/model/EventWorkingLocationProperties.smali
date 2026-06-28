.class public final Lcom/google/api/services/calendar/model/EventWorkingLocationProperties;
.super Lcom/google/api/client/json/GenericJson;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/calendar/model/EventWorkingLocationProperties$OfficeLocation;,
        Lcom/google/api/services/calendar/model/EventWorkingLocationProperties$CustomLocation;
    }
.end annotation


# instance fields
.field private customLocation:Lcom/google/api/services/calendar/model/EventWorkingLocationProperties$CustomLocation;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private homeOffice:Ljava/lang/Object;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private officeLocation:Lcom/google/api/services/calendar/model/EventWorkingLocationProperties$OfficeLocation;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private type:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventWorkingLocationProperties;->clone()Lcom/google/api/services/calendar/model/EventWorkingLocationProperties;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventWorkingLocationProperties;->clone()Lcom/google/api/services/calendar/model/EventWorkingLocationProperties;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/google/api/services/calendar/model/EventWorkingLocationProperties;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/services/calendar/model/EventWorkingLocationProperties;

    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventWorkingLocationProperties;->clone()Lcom/google/api/services/calendar/model/EventWorkingLocationProperties;

    move-result-object p0

    return-object p0
.end method

.method public getCustomLocation()Lcom/google/api/services/calendar/model/EventWorkingLocationProperties$CustomLocation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/EventWorkingLocationProperties;->customLocation:Lcom/google/api/services/calendar/model/EventWorkingLocationProperties$CustomLocation;

    .line 2
    .line 3
    return-object p0
.end method

.method public getHomeOffice()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/EventWorkingLocationProperties;->homeOffice:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public getOfficeLocation()Lcom/google/api/services/calendar/model/EventWorkingLocationProperties$OfficeLocation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/EventWorkingLocationProperties;->officeLocation:Lcom/google/api/services/calendar/model/EventWorkingLocationProperties$OfficeLocation;

    .line 2
    .line 3
    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/EventWorkingLocationProperties;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/EventWorkingLocationProperties;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/EventWorkingLocationProperties;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/EventWorkingLocationProperties;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/EventWorkingLocationProperties;

    move-result-object p0

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/EventWorkingLocationProperties;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/services/calendar/model/EventWorkingLocationProperties;

    .line 6
    .line 7
    return-object p0
.end method

.method public setCustomLocation(Lcom/google/api/services/calendar/model/EventWorkingLocationProperties$CustomLocation;)Lcom/google/api/services/calendar/model/EventWorkingLocationProperties;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/EventWorkingLocationProperties;->customLocation:Lcom/google/api/services/calendar/model/EventWorkingLocationProperties$CustomLocation;

    .line 2
    .line 3
    return-object p0
.end method

.method public setHomeOffice(Ljava/lang/Object;)Lcom/google/api/services/calendar/model/EventWorkingLocationProperties;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/EventWorkingLocationProperties;->homeOffice:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public setOfficeLocation(Lcom/google/api/services/calendar/model/EventWorkingLocationProperties$OfficeLocation;)Lcom/google/api/services/calendar/model/EventWorkingLocationProperties;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/EventWorkingLocationProperties;->officeLocation:Lcom/google/api/services/calendar/model/EventWorkingLocationProperties$OfficeLocation;

    .line 2
    .line 3
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventWorkingLocationProperties;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/EventWorkingLocationProperties;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
