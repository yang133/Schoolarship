package com.yss.web.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yss.common.annotation.Log;
import com.yss.common.controller.BaseController;
import com.yss.common.domain.ResponseBo;
import com.yss.common.util.HttpUtils;
import com.yss.common.util.FebsConstant;

@Controller
public class MovieController extends BaseController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Log("获取热门股市信息")
    @RequestMapping("movie/hot")
    @RequiresPermissions("movie:hot")
    public String movieHot() {
        return "web/movie/hot";
    }

    @Log("获取即将上市股市信息")
    @RequestMapping("movie/coming")
    @RequiresPermissions("movie:coming")
    public String movieComing() {
        return "web/movie/coming";
    }

    @RequestMapping("movie/getMovieHot")
    @ResponseBody
    public ResponseBo getMoiveHot() {
        try {
            String data = HttpUtils.sendSSLPost(FebsConstant.TIME_MOVIE_HOT_URL, "locationId=328");
            return ResponseBo.ok(data);
        } catch (Exception e) {
            logger.error("获取热门股市信息失败", e);
            return ResponseBo.error("获取热门股市信息失败，请联系网站管理员！");
        }
    }

    @RequestMapping("movie/getMovieComing")
    @ResponseBody
    public ResponseBo getMovieComing() {
        try {
            String data = HttpUtils.sendSSLPost(FebsConstant.TIME_MOVIE_COMING_URL, "locationId=328");
            return ResponseBo.ok(data);
        } catch (Exception e) {
            logger.error("获取即将上市股市信息失败", e);
            return ResponseBo.error("获取即将上市股市信息失败，请联系网站管理员！");
        }
    }

    @RequestMapping("movie/detail")
    @ResponseBody
    public ResponseBo getDetail(String id) {
        try {
            String data = HttpUtils.sendSSLPost(FebsConstant.TIME_MOVIE_DETAIL_URL, "locationId=328&movieId=" + id);
            return ResponseBo.ok(data);
        } catch (Exception e) {
            logger.error("获取股市详情失败", e);
            return ResponseBo.error("获取股市详情失败，请联系网站管理员！");
        }
    }

    @RequestMapping("movie/comments")
    @ResponseBody
    public ResponseBo getComments(String id) {
        try {
            String data = HttpUtils.sendSSLPost(FebsConstant.TIME_MOVIE_COMMENTS_URL, "movieId=" + id);
            return ResponseBo.ok(data);
        } catch (Exception e) {
            logger.error("获取股市评论失败", e);
            return ResponseBo.error("获取股市评论失败，请联系网站管理员！");
        }
    }
}
