package org.cqie.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.cqie.model.system.SysLoginLog;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Repository
@Service
public interface SysLoginLogMapper extends BaseMapper<SysLoginLog> {
}
