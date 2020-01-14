package com.rain.dao.provider;

import static com.rain.util.common.Constants.NOTICETABLE;

import com.rain.utils.currentDate;
import org.apache.ibatis.jdbc.SQL;

import com.rain.domain.Notice;

public class NoticeDynaSqlProvider {
			// 动态插入
			public String insert_Notice(Notice job){
				job.setCreateDate(currentDate.getCurrentDate());
				return new SQL(){
					{
						INSERT_INTO(NOTICETABLE);
						if(job.getTitle() != null ){
							VALUES("title", "#{title}");
						}
						if(job.getUserId()!=null){
							VALUES("user_id","#{userId}");
						}
						if(job.getContent()!=null){
							VALUES("content","#{content}");
						}
						if(job.getCreateDate()!=null){
							VALUES("create_date","#{createDate}");
						}
						if (job.getUserName()!=null){
							VALUES("user_name","#{userName}");
						}
					
						
					}
				}.toString();
			}	
			// 动态更新
			public String update_Notice(Notice job){
				job.setCreateDate(currentDate.getCurrentDate());
				return new SQL(){
					{
						UPDATE(NOTICETABLE);
						if(job.getTitle() != null ){
							SET("title = #{title}");
						}
						if(job.getUserId()!=null){
							SET("user_id = #{userId}");
						}
						if(job.getContent()!=null){
							SET("content = #{content}");
						}
						if (job.getUserName()!=null){
							SET("user_name=#{userName}");
						}
						 SET("create_date = #{createDate}");

						WHERE(" id = #{id} ");
					}
				}.toString();
			}
}
