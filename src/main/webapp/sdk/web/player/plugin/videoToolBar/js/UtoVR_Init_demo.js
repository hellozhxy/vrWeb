var AllVideoConfig = null;
var VRConfig = null;
var curSceneInfo = null;
var getBrowser = function() {
    var ua = navigator.userAgent.toLowerCase();
    var btypeInfo = (ua.match(/firefox|chrome|safari|opera/g) || "other")[0];
    if ((ua.match(/edge|msie|trident/g) || [])[0]) {
        btypeInfo = "msie"
    }
    var pc = "";
    var prefix = "";
    var plat = "";
    var isTocuh = "ontouchstart" in window || ua.indexOf("touch") != -1 || ua.indexOf("mobile") != -1;
    if (isTocuh) {
        if (ua.indexOf("ipad") !== -1) {
            pc = "pad"
        } else if (ua.indexOf("mobile") !== -1) {
            pc = "mobile"
        } else if (ua.indexOf("android") !== -1) {
            pc = "androidPad"
        } else {
            pc = "other"
        }
    } else {
        pc = "pc"
    }
    switch (btypeInfo) {
        case "chrome":
        case "safari":
        case "mobile":
            prefix = "webkit";
            break;
        case "msie":
            prefix = "ms";
            break;
        case "firefox":
            prefix = "Moz";
            break;
        case "opera":
            prefix = "O";
            break;
        default:
            prefix = "webkit";
            break
    }
    plat = ua.indexOf("android") > 0 ? "android" : navigator.platform.toLowerCase();
    return {
        version: (ua.match(/[\s\S]+(?:rv|it|ra|ie)[\/: ]([\d.]+)/) || [])[1],
        plat: plat,
        type: btypeInfo,
        pc: pc,
        prefix: prefix,
        isMobile: pc == "pc" ? false : true
    }
};
var parseConfigData = function(data) {
    var config_str = data;
    var l = [6, 9, 17, 7, 20, 0, 23, 1, 24, 8, 16, 18, 13, 15, 2, 21, 19, 14, 3, 10, 5, 22, 25, 4, 12, 11];
    var config_new = [];
    var index = 26;
    while (index < config_str.length) {
        for (var i = 0; i < 26; i++) {
            config_new[index - 26 + l[i]] = config_str[index - 26 + i]
        }
        index += 26
    }
    if (index - 26 < config_str.length) {
        for (var i = 0; i < config_str.length - index + 26; i++) {
            config_new[index - 26 + i] = config_str[index - 26 + i]
        }
    }
    var str = "";
    for (var i = 0; i < config_new.length; i++) {
        str += config_new[i]
    }
    return str
};
var parseVRConfig = function(vrConfig) {
    var s = parseConfigData(vrConfig);
    VRConfig = JSON.parse(s);
    return VRConfig
};
var getVideoPathByQuality = function(Addresses, Quality) {
    var path = "";
    var sceneArray = Addresses;
    var sceneArrayLen = Addresses.length;
    for (var i = 0; i < sceneArrayLen; i++) {
        var indexObj = sceneArray[i];
        if (indexObj.Quality == Quality) {
            path = indexObj.MP4;
            break
        }
    }
    return path
};
var setInitSceneData = function(config) {
    var initConfig, initSceneData;
    $(document.head).append('<link href="http://res.utovr.com/common/player/javascript/plugin/share/share.css" rel="stylesheet"/>');
    if (config.IsVRTour) {
        parseVRConfig(config.VRTour);
        initConfig = VRConfig.Init;
        initSceneData = getVRSceneInfoById(initConfig.SceneID)
    } else {
        config.onFinished = [{
            Name: "action_playerEnd",
            Params: null,
            Triggers: {
                Delay: 0,
                Type: "autorun"
            }
        }];
        initConfig = config.Init;
        initSceneData = config
    }
    return {
        initConfig: initConfig,
        initSceneData: initSceneData
    }
};
var getVRSceneInfoById = function(sid) {
    var sceneArray = VRConfig.Scenes || [];
    var sceneArrayLen = sceneArray.length;
    var sceneObj = null;
    for (var i = 0; i < sceneArrayLen; i++) {
        var indexObj = sceneArray[i];
        if (indexObj.SceneID == sid) {
            sceneObj = indexObj;
            break
        }
    }
    sceneObj.IsVRTour = true;
    return sceneObj
};
var setCurSceneInfo = function(info) {
    curSceneInfo = info
};
var isShowAll = true;
var hiddenAll = function() {
    $("#videoToolbar").animate({
        bottom: -41
    }, 300);
    $("#ReChoiceLayer").animate({
        right: -80
    }, 300);
    isShowAll = false
};
var showAll = function() {
    $("#videoToolbar").animate({
        bottom: 0
    }, 300);
    $("#ReChoiceLayer").animate({
        right: 0
    }, 300);
    isShowAll = true
};
var toggleAll = function() {
    if (isShowAll) {
        hiddenAll()
    } else {
        showAll()
    }
};
(function() {
    var UtoVR_DMObj = null,
        UtoVR_DMUIObj = null,
        AccountID = null,
        UserKey = null,
        VideoID = null,
        VideoCode, videoType, VideoIndex;
    var HotSpotObj = null;
    var initDMObj = function(pobj) {
        UtoVR_DMObj = new UtoVRDMClass(pobj, VideoID, AccountID, UserKey);
        UtoVR_DMUIObj = new initUtoVRDMUI(UtoVR_DMObj, $("#utovr_DM"), AccountID, "html5");
        UtoVR_DMUIObj.openUIDM()
    };
    var initVRTourObj = function(pobj) {
        if (HotSpotObj && HotSpotObj.sceneID == pobj.api_getCurSceneId()) {
            return
        }
        delete HotSpotObj;
        var isUtoVRPC = true;
        HotSpotObj = new HotSpotManager(pobj, curSceneInfo, AllVideoConfig, isUtoVRPC)
    };
    var setConfig = function(config, fov) {
        AllVideoConfig = config;
        VideoID = config.Id, VideoCode = config.Code, VideoIndex = config.Init.Quality * 1 || 1, videoType = config.RenderType;
        var info = setInitSceneData(config);
        var initConfig = info.initConfig;
        var initSceneData = info.initSceneData;
        getBrowser().isMobile && (initConfig.Quality = 1);
        setCurSceneInfo(initSceneData);
        var defPath = getVideoPathByQuality(initSceneData.Addresses, initConfig.Quality);
        var params = {
            container: document.getElementById("pano"),
            name: "SceneViewer",
            scenesArr: [{
                sceneId: curSceneInfo.SceneID || curSceneInfo.Id || "defalut_ID",
                sceneName: curSceneInfo.Name,
                sceneFilePath: defPath,
                sceneType: "Video",
                videoType: curSceneInfo.RenderType,
                isVideoLoop: false,
                isVideoAutoPlay: true,
                initFov: fov,
                pan: initConfig.Pan,
                tilt: initConfig.Tilt
            }],
            initOverCallBack: function() {
                initDMObj(this)
            },
            videoTogglePlayCallBack: function() {
                UtoVR_DMObj && UtoVR_DMObj.setDMStatus(this.api_getVideoPlayStatus())
            },
            videoUpdateCallBack: function() {
                UtoVR_DMObj && UtoVR_DMObj.updateDMTime()
            },
            fullScreenChangeCallBack: function() {
                UtoVR_DMObj && UtoVR_DMObj.updateDMSize()
            },
            sceneEventClickCallBack: function(e) {
                toggleAll();
                HotSpotObj && HotSpotObj.click(e)
            },
            sceneEventMoveCallBack: function(e) {
                HotSpotObj && HotSpotObj.mouse(e)
            },
            videoLoadMetaDataCallBack: function(obj) {
                initVRTourObj(this);
                !getBrowser().isMobile && obj && obj.resetQuality(curSceneInfo.Addresses)
            },
            drawWebGLCallBack: function() {
                HotSpotObj && HotSpotObj.clearDrawAll();
                HotSpotObj && HotSpotObj.show();
                HotSpotObj && HotSpotObj.mouseGyro();
                HotSpotObj && HotSpotObj.showOver();
                HotSpotObj && HotSpotObj.gyroCheck()
            },
            videoPlayEndCallBack: function() {
                HotSpotObj && HotSpotObj.onFinished()
            },
            sceneResizeCallBack: function() {
                HotSpotObj && HotSpotObj.setPointerSize()
            },
            errorCallBack: function(e) {
                console.log(e)
            }
        };
        var TBConfig = {
            videoQuality: initConfig.Quality,
            videoList: curSceneInfo.Addresses
        };
        initLoad(params, function(playMode) {
            if (playMode == "flash") {
                $("#dm_toggleBtn").addClass("toggle_close");
                $("#dm_loginTips").html("暂不支持弹幕");
                $("#dm_sendBtn").css("display", "none")
            }
        }, TBConfig, VideoCode)
    };
    window.initPlayer = function(config) {
        var fov = 105;
        AccountID = config.account.id;
        UserKey = config.account.key;
        var vrInitJSPath = "http://res.utovr.com/common/player/javascript/plugin/vrTour/VRInit.js?t=20161118";
        $.getScript(vrInitJSPath, function(data) {
            setConfig(config.video, fov)
        })
    }
})();