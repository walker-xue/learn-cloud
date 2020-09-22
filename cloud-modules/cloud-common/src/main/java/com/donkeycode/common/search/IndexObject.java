package com.donkeycode.common.search;


import com.donkeycode.core.BaseEntity;
import lombok.Getter;
import lombok.Setter;


/**
 * Description:索引对象
 *
 * @author ace
 **/
@SuppressWarnings("serial")
@Setter
@Getter
public class IndexObject extends BaseEntity implements Comparable<IndexObject> {

    private Long id;
    private String title;
    private String keywords;
    private String descripton;
    private String postDate;
    private String url;
    private float score;


    public IndexObject(Long _id, String _keywords, String _descripton, String _postDate, float _score) {
        super();
        this.id = _id;
        this.keywords = _keywords;
        this.score = _score;
        this.descripton = _descripton;
        this.postDate = _postDate;
    }

    @Override
    public int compareTo(IndexObject o) {
        if (this.score < o.getScore()) {
            return 1;
        } else if (this.score > o.getScore()) {
            return -1;
        }
        return 0;
    }


}
