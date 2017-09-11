#目的地新增地理位置字段
ALTER TABLE wrc_destination_info
  ADD COLUMN position_id VARCHAR(36) NOT NULL COMMENT '所属位子id',
  ADD COLUMN position_name VARCHAR(36) NOT NULL COMMENT '所属位子';
#新增地位子表