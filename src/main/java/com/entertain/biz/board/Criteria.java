package com.entertain.biz.board;

public class Criteria {
    private int page;
    private int perPageNum;
    private String board_text;
    private String search_type;

    public String getBoard_text() {
        return board_text;
    }

    public void setBoard_text(String board_text) {
        this.board_text = board_text;
    }

    public String getSearch_type() {
        return search_type;
    }

    public void setSearch_type(String search_type) {
        this.search_type = search_type;
    }

    public int getPageStart() {
        return (this.page - 1) * perPageNum;
    }

    public Criteria() {
        this.page = 1;
        this.perPageNum = 10;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        if (page <= 0) {
            this.page = 1;
        } else {
            this.page = page;
        }
    }

    public int getPerPageNum() {
        return perPageNum;
    }

    public void setPerPageNum(int pageCount) {
        int cnt = this.perPageNum;
        if (pageCount != cnt) {
            this.perPageNum = cnt;
        } else {
            this.perPageNum = pageCount;
        }
    }
}